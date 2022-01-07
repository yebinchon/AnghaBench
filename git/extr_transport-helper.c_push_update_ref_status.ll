; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_push_update_ref_status.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_push_update_ref_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.ref = type { i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"ok \00", align 1
@REF_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"error \00", align 1
@REF_STATUS_REMOTE_REJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"expected ok/error, helper said '%s'\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"no match\00", align 1
@REF_STATUS_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"up to date\00", align 1
@REF_STATUS_UPTODATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"non-fast forward\00", align 1
@REF_STATUS_REJECT_NONFASTFORWARD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"already exists\00", align 1
@REF_STATUS_REJECT_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"fetch first\00", align 1
@REF_STATUS_REJECT_FETCH_FIRST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"needs force\00", align 1
@REF_STATUS_REJECT_NEEDS_FORCE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"stale info\00", align 1
@REF_STATUS_REJECT_STALE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"forced update\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"helper reported unexpected status of %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.ref**, %struct.ref*)* @push_update_ref_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_update_ref_status(%struct.strbuf* %0, %struct.ref** %1, %struct.ref* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.ref**, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store %struct.ref** %1, %struct.ref*** %6, align 8
  store %struct.ref* %2, %struct.ref** %7, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @starts_with(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* @REF_STATUS_OK, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  store i8* %24, i8** %8, align 8
  br label %44

25:                                               ; preds = %3
  %26 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @starts_with(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* @REF_STATUS_REMOTE_REJECT, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 6
  store i8* %36, i8** %8, align 8
  br label %43

37:                                               ; preds = %25
  %38 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @die(i32 %38, i8* %41)
  br label %43

43:                                               ; preds = %37, %31
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i8*, i8** %8, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 32)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %133

49:                                               ; preds = %44
  %50 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %9, align 8
  store i8 0, i8* %51, align 1
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @unquote_c_style(%struct.strbuf* %12, i8* %53, i8** %13)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  store i8* %57, i8** %9, align 8
  br label %61

58:                                               ; preds = %49
  %59 = load i8*, i8** %9, align 8
  %60 = call i8* @xstrdup(i8* %59)
  store i8* %60, i8** %9, align 8
  br label %61

61:                                               ; preds = %58, %56
  %62 = call i32 @strbuf_release(%struct.strbuf* %12)
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @REF_STATUS_NONE, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @FREE_AND_NULL(i8* %68)
  br label %132

70:                                               ; preds = %61
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @REF_STATUS_UPTODATE, align 4
  store i32 %75, i32* %10, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @FREE_AND_NULL(i8* %76)
  br label %131

78:                                               ; preds = %70
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @REF_STATUS_REJECT_NONFASTFORWARD, align 4
  store i32 %83, i32* %10, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @FREE_AND_NULL(i8* %84)
  br label %130

86:                                               ; preds = %78
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @REF_STATUS_REJECT_ALREADY_EXISTS, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @FREE_AND_NULL(i8* %92)
  br label %129

94:                                               ; preds = %86
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @REF_STATUS_REJECT_FETCH_FIRST, align 4
  store i32 %99, i32* %10, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @FREE_AND_NULL(i8* %100)
  br label %128

102:                                              ; preds = %94
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* @REF_STATUS_REJECT_NEEDS_FORCE, align 4
  store i32 %107, i32* %10, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @FREE_AND_NULL(i8* %108)
  br label %127

110:                                              ; preds = %102
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @REF_STATUS_REJECT_STALE, align 4
  store i32 %115, i32* %10, align 4
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 @FREE_AND_NULL(i8* %116)
  br label %126

118:                                              ; preds = %110
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  store i32 1, i32* %11, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @FREE_AND_NULL(i8* %123)
  br label %125

125:                                              ; preds = %122, %118
  br label %126

126:                                              ; preds = %125, %114
  br label %127

127:                                              ; preds = %126, %106
  br label %128

128:                                              ; preds = %127, %98
  br label %129

129:                                              ; preds = %128, %90
  br label %130

130:                                              ; preds = %129, %82
  br label %131

131:                                              ; preds = %130, %74
  br label %132

132:                                              ; preds = %131, %66
  br label %133

133:                                              ; preds = %132, %44
  %134 = load %struct.ref**, %struct.ref*** %6, align 8
  %135 = load %struct.ref*, %struct.ref** %134, align 8
  %136 = icmp ne %struct.ref* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load %struct.ref**, %struct.ref*** %6, align 8
  %139 = load %struct.ref*, %struct.ref** %138, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = call %struct.ref* @find_ref_by_name(%struct.ref* %139, i8* %140)
  %142 = load %struct.ref**, %struct.ref*** %6, align 8
  store %struct.ref* %141, %struct.ref** %142, align 8
  br label %143

143:                                              ; preds = %137, %133
  %144 = load %struct.ref**, %struct.ref*** %6, align 8
  %145 = load %struct.ref*, %struct.ref** %144, align 8
  %146 = icmp ne %struct.ref* %145, null
  br i1 %146, label %152, label %147

147:                                              ; preds = %143
  %148 = load %struct.ref*, %struct.ref** %7, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = call %struct.ref* @find_ref_by_name(%struct.ref* %148, i8* %149)
  %151 = load %struct.ref**, %struct.ref*** %6, align 8
  store %struct.ref* %150, %struct.ref** %151, align 8
  br label %152

152:                                              ; preds = %147, %143
  %153 = load %struct.ref**, %struct.ref*** %6, align 8
  %154 = load %struct.ref*, %struct.ref** %153, align 8
  %155 = icmp ne %struct.ref* %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %158 = load i8*, i8** %8, align 8
  %159 = call i32 @warning(i32 %157, i8* %158)
  store i32 1, i32* %4, align 4
  br label %193

160:                                              ; preds = %152
  %161 = load %struct.ref**, %struct.ref*** %6, align 8
  %162 = load %struct.ref*, %struct.ref** %161, align 8
  %163 = getelementptr inbounds %struct.ref, %struct.ref* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @REF_STATUS_NONE, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @REF_STATUS_NONE, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 1, i32* %4, align 4
  br label %193

172:                                              ; preds = %167
  br label %173

173:                                              ; preds = %172, %160
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.ref**, %struct.ref*** %6, align 8
  %176 = load %struct.ref*, %struct.ref** %175, align 8
  %177 = getelementptr inbounds %struct.ref, %struct.ref* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.ref**, %struct.ref*** %6, align 8
  %180 = load %struct.ref*, %struct.ref** %179, align 8
  %181 = getelementptr inbounds %struct.ref, %struct.ref* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %178
  store i32 %183, i32* %181, align 4
  %184 = load i8*, i8** %9, align 8
  %185 = load %struct.ref**, %struct.ref*** %6, align 8
  %186 = load %struct.ref*, %struct.ref** %185, align 8
  %187 = getelementptr inbounds %struct.ref, %struct.ref* %186, i32 0, i32 2
  store i8* %184, i8** %187, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @REF_STATUS_OK, align 4
  %190 = icmp eq i32 %188, %189
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %173, %171, %156
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unquote_c_style(%struct.strbuf*, i8*, i8**) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @FREE_AND_NULL(i8*) #1

declare dso_local %struct.ref* @find_ref_by_name(%struct.ref*, i8*) #1

declare dso_local i32 @warning(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
