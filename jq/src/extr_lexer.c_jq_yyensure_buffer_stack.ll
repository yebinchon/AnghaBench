; ModuleID = '/home/carl/AnghaBench/jq/src/extr_lexer.c_jq_yyensure_buffer_stack.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_lexer.c_jq_yyensure_buffer_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyguts_t = type { i32, i32, %struct.yy_buffer_state** }
%struct.yy_buffer_state = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"out of dynamic memory in yyensure_buffer_stack()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @yyensure_buffer_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yyensure_buffer_stack(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.yyguts_t*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.yyguts_t*
  store %struct.yyguts_t* %7, %struct.yyguts_t** %4, align 8
  %8 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %9 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %8, i32 0, i32 2
  %10 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** %9, align 8
  %11 = icmp ne %struct.yy_buffer_state** %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @yyalloc(i32 %16, i64 %17)
  %19 = inttoptr i64 %18 to %struct.yy_buffer_state**
  %20 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %21 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %20, i32 0, i32 2
  store %struct.yy_buffer_state** %19, %struct.yy_buffer_state*** %21, align 8
  %22 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %23 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %22, i32 0, i32 2
  %24 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** %23, align 8
  %25 = icmp ne %struct.yy_buffer_state** %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %12
  %27 = call i32 @YY_FATAL_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %12
  %29 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %30 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %29, i32 0, i32 2
  %31 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(%struct.yy_buffer_state** %31, i32 0, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %39 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %41 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  br label %92

42:                                               ; preds = %1
  %43 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %44 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %47 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = icmp sge i32 %45, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %42
  store i32 8, i32* %5, align 4
  %52 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %53 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %3, align 4
  %57 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %58 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %57, i32 0, i32 2
  %59 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 8
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* %2, align 8
  %65 = call i64 @yyrealloc(%struct.yy_buffer_state** %59, i32 %63, i64 %64)
  %66 = inttoptr i64 %65 to %struct.yy_buffer_state**
  %67 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %68 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %67, i32 0, i32 2
  store %struct.yy_buffer_state** %66, %struct.yy_buffer_state*** %68, align 8
  %69 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %70 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %69, i32 0, i32 2
  %71 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** %70, align 8
  %72 = icmp ne %struct.yy_buffer_state** %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %51
  %74 = call i32 @YY_FATAL_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %51
  %76 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %77 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %76, i32 0, i32 2
  %78 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** %77, align 8
  %79 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %80 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %78, i64 %82
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memset(%struct.yy_buffer_state** %83, i32 0, i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %91 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %28, %75, %42
  ret void
}

declare dso_local i64 @yyalloc(i32, i64) #1

declare dso_local i32 @YY_FATAL_ERROR(i8*) #1

declare dso_local i32 @memset(%struct.yy_buffer_state**, i32, i32) #1

declare dso_local i64 @yyrealloc(%struct.yy_buffer_state**, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
