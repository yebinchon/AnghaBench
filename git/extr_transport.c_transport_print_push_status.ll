; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_transport_print_push_status.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_transport_print_push_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i64, i32, %struct.ref* }

@.str = private unnamed_addr constant [41 x i8] c"could not parse transport.color.* config\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@REF_STATUS_UPTODATE = common dso_local global i64 0, align 8
@REF_STATUS_OK = common dso_local global i64 0, align 8
@REF_STATUS_NONE = common dso_local global i64 0, align 8
@REF_STATUS_REJECT_NONFASTFORWARD = common dso_local global i64 0, align 8
@REJECT_NON_FF_HEAD = common dso_local global i32 0, align 4
@REJECT_NON_FF_OTHER = common dso_local global i32 0, align 4
@REF_STATUS_REJECT_ALREADY_EXISTS = common dso_local global i64 0, align 8
@REJECT_ALREADY_EXISTS = common dso_local global i32 0, align 4
@REF_STATUS_REJECT_FETCH_FIRST = common dso_local global i64 0, align 8
@REJECT_FETCH_FIRST = common dso_local global i32 0, align 4
@REF_STATUS_REJECT_NEEDS_FORCE = common dso_local global i64 0, align 8
@REJECT_NEEDS_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_print_push_status(i8* %0, %struct.ref* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ref*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ref* %1, %struct.ref** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.ref*, %struct.ref** %7, align 8
  %16 = call i32 @transport_summary_width(%struct.ref* %15)
  store i32 %16, i32* %14, align 4
  %17 = call i64 (...) @transport_color_config()
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @warning(i32 %20)
  br label %22

22:                                               ; preds = %19, %5
  %23 = load i32, i32* @RESOLVE_REF_READING, align 4
  %24 = call i8* @resolve_refdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32* null, i32* null)
  store i8* %24, i8** %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load %struct.ref*, %struct.ref** %7, align 8
  store %struct.ref* %28, %struct.ref** %11, align 8
  br label %29

29:                                               ; preds = %50, %27
  %30 = load %struct.ref*, %struct.ref** %11, align 8
  %31 = icmp ne %struct.ref* %30, null
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = load %struct.ref*, %struct.ref** %11, align 8
  %34 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REF_STATUS_UPTODATE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.ref*, %struct.ref** %11, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @print_one_push_status(%struct.ref* %39, i8* %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %38, %32
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.ref*, %struct.ref** %11, align 8
  %52 = getelementptr inbounds %struct.ref, %struct.ref* %51, i32 0, i32 2
  %53 = load %struct.ref*, %struct.ref** %52, align 8
  store %struct.ref* %53, %struct.ref** %11, align 8
  br label %29

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54, %22
  %56 = load %struct.ref*, %struct.ref** %7, align 8
  store %struct.ref* %56, %struct.ref** %11, align 8
  br label %57

57:                                               ; preds = %78, %55
  %58 = load %struct.ref*, %struct.ref** %11, align 8
  %59 = icmp ne %struct.ref* %58, null
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load %struct.ref*, %struct.ref** %11, align 8
  %62 = getelementptr inbounds %struct.ref, %struct.ref* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @REF_STATUS_OK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.ref*, %struct.ref** %11, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i64 @print_one_push_status(%struct.ref* %67, i8* %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %66, %60
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.ref*, %struct.ref** %11, align 8
  %80 = getelementptr inbounds %struct.ref, %struct.ref* %79, i32 0, i32 2
  %81 = load %struct.ref*, %struct.ref** %80, align 8
  store %struct.ref* %81, %struct.ref** %11, align 8
  br label %57

82:                                               ; preds = %57
  %83 = load i32*, i32** %10, align 8
  store i32 0, i32* %83, align 4
  %84 = load %struct.ref*, %struct.ref** %7, align 8
  store %struct.ref* %84, %struct.ref** %11, align 8
  br label %85

85:                                               ; preds = %181, %82
  %86 = load %struct.ref*, %struct.ref** %11, align 8
  %87 = icmp ne %struct.ref* %86, null
  br i1 %87, label %88, label %185

88:                                               ; preds = %85
  %89 = load %struct.ref*, %struct.ref** %11, align 8
  %90 = getelementptr inbounds %struct.ref, %struct.ref* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @REF_STATUS_NONE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %88
  %95 = load %struct.ref*, %struct.ref** %11, align 8
  %96 = getelementptr inbounds %struct.ref, %struct.ref* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @REF_STATUS_UPTODATE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load %struct.ref*, %struct.ref** %11, align 8
  %102 = getelementptr inbounds %struct.ref, %struct.ref* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @REF_STATUS_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load %struct.ref*, %struct.ref** %11, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i64 @print_one_push_status(%struct.ref* %107, i8* %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %106, %100, %94, %88
  %118 = load %struct.ref*, %struct.ref** %11, align 8
  %119 = getelementptr inbounds %struct.ref, %struct.ref* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @REF_STATUS_REJECT_NONFASTFORWARD, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %144

123:                                              ; preds = %117
  %124 = load i8*, i8** %13, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load i8*, i8** %13, align 8
  %128 = load %struct.ref*, %struct.ref** %11, align 8
  %129 = getelementptr inbounds %struct.ref, %struct.ref* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @strcmp(i8* %127, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* @REJECT_NON_FF_HEAD, align 4
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 4
  br label %143

138:                                              ; preds = %126, %123
  %139 = load i32, i32* @REJECT_NON_FF_OTHER, align 4
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %139
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %138, %133
  br label %180

144:                                              ; preds = %117
  %145 = load %struct.ref*, %struct.ref** %11, align 8
  %146 = getelementptr inbounds %struct.ref, %struct.ref* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @REF_STATUS_REJECT_ALREADY_EXISTS, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  %151 = load i32, i32* @REJECT_ALREADY_EXISTS, align 4
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %151
  store i32 %154, i32* %152, align 4
  br label %179

155:                                              ; preds = %144
  %156 = load %struct.ref*, %struct.ref** %11, align 8
  %157 = getelementptr inbounds %struct.ref, %struct.ref* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @REF_STATUS_REJECT_FETCH_FIRST, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load i32, i32* @REJECT_FETCH_FIRST, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %162
  store i32 %165, i32* %163, align 4
  br label %178

166:                                              ; preds = %155
  %167 = load %struct.ref*, %struct.ref** %11, align 8
  %168 = getelementptr inbounds %struct.ref, %struct.ref* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @REF_STATUS_REJECT_NEEDS_FORCE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = load i32, i32* @REJECT_NEEDS_FORCE, align 4
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %173
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %172, %166
  br label %178

178:                                              ; preds = %177, %161
  br label %179

179:                                              ; preds = %178, %150
  br label %180

180:                                              ; preds = %179, %143
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.ref*, %struct.ref** %11, align 8
  %183 = getelementptr inbounds %struct.ref, %struct.ref* %182, i32 0, i32 2
  %184 = load %struct.ref*, %struct.ref** %183, align 8
  store %struct.ref* %184, %struct.ref** %11, align 8
  br label %85

185:                                              ; preds = %85
  %186 = load i8*, i8** %13, align 8
  %187 = call i32 @free(i8* %186)
  ret void
}

declare dso_local i32 @transport_summary_width(%struct.ref*) #1

declare dso_local i64 @transport_color_config(...) #1

declare dso_local i32 @warning(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @resolve_refdup(i8*, i32, i32*, i32*) #1

declare dso_local i64 @print_one_push_status(%struct.ref*, i8*, i32, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
