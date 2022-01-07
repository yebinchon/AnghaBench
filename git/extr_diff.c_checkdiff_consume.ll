; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_checkdiff_consume.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_checkdiff_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkdiff_t = type { i32, i8*, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@DIFF_WHITESPACE = common dso_local global i32 0, align 4
@DIFF_RESET = common dso_local global i32 0, align 4
@DIFF_FILE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s%s:%d: leftover conflict marker\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s%s:%d: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @checkdiff_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkdiff_consume(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.checkdiff_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.checkdiff_t*
  store %struct.checkdiff_t* %16, %struct.checkdiff_t** %7, align 8
  %17 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %18 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %21 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DIFF_WHITESPACE, align 4
  %26 = call i8* @diff_get_color(i32 %24, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %28 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DIFF_RESET, align 4
  %33 = call i8* @diff_get_color(i32 %31, i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %35 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %34, i32 0, i32 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DIFF_FILE_NEW, align 4
  %40 = call i8* @diff_get_color(i32 %38, i32 %39)
  store i8* %40, i8** %11, align 8
  %41 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %42 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @assert(%struct.TYPE_4__* %43)
  %45 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %46 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i8* @diff_line_prefix(%struct.TYPE_4__* %47)
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 43
  br i1 %53, label %54, label %143

54:                                               ; preds = %3
  %55 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %56 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i32, i32* %8, align 4
  %62 = load i64, i64* %6, align 8
  %63 = sub i64 %62, 1
  %64 = call i64 @is_conflict_marker(i8* %60, i32 %61, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %54
  %67 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %68 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %72 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %71, i32 0, i32 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %13, align 8
  %77 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %78 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %81 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %76, i32 %79, i8* %82)
  br label %84

84:                                               ; preds = %66, %54
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i64, i64* %6, align 8
  %88 = sub i64 %87, 1
  %89 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %90 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ws_check(i8* %86, i64 %88, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %84
  br label %155

96:                                               ; preds = %84
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %99 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i8* @whitespace_error_string(i32 %102)
  store i8* %103, i8** %12, align 8
  %104 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %105 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %104, i32 0, i32 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %13, align 8
  %110 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %111 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %114 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %109, i32 %112, i8* %115, i8* %116)
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %121 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %120, i32 0, i32 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @emit_line(%struct.TYPE_4__* %122, i8* %123, i8* %124, i8* %125, i32 1)
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = load i64, i64* %6, align 8
  %130 = sub i64 %129, 1
  %131 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %132 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %135 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %134, i32 0, i32 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i8*, i8** %11, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = call i32 @ws_check_emit(i8* %128, i64 %130, i32 %133, i32 %138, i8* %139, i8* %140, i8* %141)
  br label %155

143:                                              ; preds = %3
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 32
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load %struct.checkdiff_t*, %struct.checkdiff_t** %7, align 8
  %151 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %151, align 8
  br label %154

154:                                              ; preds = %149, %143
  br label %155

155:                                              ; preds = %95, %154, %96
  ret void
}

declare dso_local i8* @diff_get_color(i32, i32) #1

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i8* @diff_line_prefix(%struct.TYPE_4__*) #1

declare dso_local i64 @is_conflict_marker(i8*, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8*, ...) #1

declare dso_local i32 @ws_check(i8*, i64, i32) #1

declare dso_local i8* @whitespace_error_string(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @emit_line(%struct.TYPE_4__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @ws_check_emit(i8*, i64, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
