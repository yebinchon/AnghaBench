; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_set_git_option.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_set_git_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_transport_options = type { i8*, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, %struct.string_list*, i64 }
%struct.string_list = type { i32 }

@TRANS_OPT_UPLOADPACK = common dso_local global i32 0, align 4
@TRANS_OPT_RECEIVEPACK = common dso_local global i32 0, align 4
@TRANS_OPT_THIN = common dso_local global i32 0, align 4
@TRANS_OPT_FOLLOWTAGS = common dso_local global i32 0, align 4
@TRANS_OPT_KEEP = common dso_local global i32 0, align 4
@TRANS_OPT_UPDATE_SHALLOW = common dso_local global i32 0, align 4
@TRANS_OPT_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"transport: invalid depth option '%s'\00", align 1
@TRANS_OPT_DEEPEN_SINCE = common dso_local global i32 0, align 4
@TRANS_OPT_DEEPEN_NOT = common dso_local global i32 0, align 4
@TRANS_OPT_DEEPEN_RELATIVE = common dso_local global i32 0, align 4
@TRANS_OPT_FROM_PROMISOR = common dso_local global i32 0, align 4
@TRANS_OPT_NO_DEPENDENTS = common dso_local global i32 0, align 4
@TRANS_OPT_LIST_OBJECTS_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.git_transport_options*, i8*, i8*)* @set_git_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_git_option(%struct.git_transport_options* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.git_transport_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.git_transport_options* %0, %struct.git_transport_options** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* @TRANS_OPT_UPLOADPACK, align 4
  %11 = call i32 @strcmp(i8* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %16 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  store i32 0, i32* %4, align 4
  br label %187

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @TRANS_OPT_RECEIVEPACK, align 4
  %20 = call i32 @strcmp(i8* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %25 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  store i32 0, i32* %4, align 4
  br label %187

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @TRANS_OPT_THIN, align 4
  %29 = call i32 @strcmp(i8* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %38 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %4, align 4
  br label %187

39:                                               ; preds = %26
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @TRANS_OPT_FOLLOWTAGS, align 4
  %42 = call i32 @strcmp(i8* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %51 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %187

52:                                               ; preds = %39
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* @TRANS_OPT_KEEP, align 4
  %55 = call i32 @strcmp(i8* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %64 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %4, align 4
  br label %187

65:                                               ; preds = %52
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* @TRANS_OPT_UPDATE_SHALLOW, align 4
  %68 = call i32 @strcmp(i8* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %77 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %4, align 4
  br label %187

78:                                               ; preds = %65
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* @TRANS_OPT_DEPTH, align 4
  %81 = call i32 @strcmp(i8* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %88 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %87, i32 0, i32 12
  store i64 0, i64* %88, align 8
  br label %102

89:                                               ; preds = %83
  %90 = load i8*, i8** %7, align 8
  %91 = call i64 @strtol(i8* %90, i8** %8, i32 0)
  %92 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %93 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %92, i32 0, i32 12
  store i64 %91, i64* %93, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i8, i8* %94, align 1
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @die(i32 %98, i8* %99)
  br label %101

101:                                              ; preds = %97, %89
  br label %102

102:                                              ; preds = %101, %86
  store i32 0, i32* %4, align 4
  br label %187

103:                                              ; preds = %78
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* @TRANS_OPT_DEEPEN_SINCE, align 4
  %106 = call i32 @strcmp(i8* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %111 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %110, i32 0, i32 6
  store i8* %109, i8** %111, align 8
  store i32 0, i32* %4, align 4
  br label %187

112:                                              ; preds = %103
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* @TRANS_OPT_DEEPEN_NOT, align 4
  %115 = call i32 @strcmp(i8* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i8*, i8** %7, align 8
  %119 = bitcast i8* %118 to %struct.string_list*
  %120 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %121 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %120, i32 0, i32 11
  store %struct.string_list* %119, %struct.string_list** %121, align 8
  store i32 0, i32* %4, align 4
  br label %187

122:                                              ; preds = %112
  %123 = load i8*, i8** %6, align 8
  %124 = load i32, i32* @TRANS_OPT_DEEPEN_RELATIVE, align 4
  %125 = call i32 @strcmp(i8* %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %122
  %128 = load i8*, i8** %7, align 8
  %129 = icmp ne i8* %128, null
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %134 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 8
  store i32 0, i32* %4, align 4
  br label %187

135:                                              ; preds = %122
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* @TRANS_OPT_FROM_PROMISOR, align 4
  %138 = call i32 @strcmp(i8* %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %135
  %141 = load i8*, i8** %7, align 8
  %142 = icmp ne i8* %141, null
  %143 = xor i1 %142, true
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %147 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %146, i32 0, i32 8
  store i32 %145, i32* %147, align 4
  store i32 0, i32* %4, align 4
  br label %187

148:                                              ; preds = %135
  %149 = load i8*, i8** %6, align 8
  %150 = load i32, i32* @TRANS_OPT_NO_DEPENDENTS, align 4
  %151 = call i32 @strcmp(i8* %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %148
  %154 = load i8*, i8** %7, align 8
  %155 = icmp ne i8* %154, null
  %156 = xor i1 %155, true
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %160 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 8
  store i32 0, i32* %4, align 4
  br label %187

161:                                              ; preds = %148
  %162 = load i8*, i8** %6, align 8
  %163 = load i32, i32* @TRANS_OPT_LIST_OBJECTS_FILTER, align 4
  %164 = call i32 @strcmp(i8* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %161
  %167 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %168 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %167, i32 0, i32 10
  %169 = call i32 @list_objects_filter_die_if_populated(i32* %168)
  %170 = load %struct.git_transport_options*, %struct.git_transport_options** %5, align 8
  %171 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %170, i32 0, i32 10
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 @parse_list_objects_filter(i32* %171, i8* %172)
  store i32 0, i32* %4, align 4
  br label %187

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185
  store i32 1, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %166, %153, %140, %127, %117, %108, %102, %70, %57, %44, %31, %22, %13
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @list_objects_filter_die_if_populated(i32*) #1

declare dso_local i32 @parse_list_objects_filter(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
