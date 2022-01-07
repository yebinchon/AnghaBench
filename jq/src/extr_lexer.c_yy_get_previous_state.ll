; ModuleID = '/home/carl/AnghaBench/jq/src/extr_lexer.c_yy_get_previous_state.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_lexer.c_yy_get_previous_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyguts_t = type { i64, i8*, i8*, i64, i8* }

@YY_MORE_ADJ = common dso_local global i32 0, align 4
@yy_ec = common dso_local global i32* null, align 8
@yy_accept = common dso_local global i64* null, align 8
@yy_chk = common dso_local global i64* null, align 8
@yy_base = common dso_local global i64* null, align 8
@yy_def = common dso_local global i64* null, align 8
@yy_meta = common dso_local global i64* null, align 8
@yy_nxt = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @yy_get_previous_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @yy_get_previous_state(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.yyguts_t*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.yyguts_t*
  store %struct.yyguts_t* %8, %struct.yyguts_t** %5, align 8
  %9 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %10 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %13 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @YY_MORE_ADJ, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %90, %1
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %21 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ult i8* %19, %22
  br i1 %23, label %24, label %93

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32*, i32** @yy_ec, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @YY_SC_TO_UI(i8 signext %32)
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i32 [ %35, %29 ], [ 1, %36 ]
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %6, align 8
  %40 = load i64*, i64** @yy_accept, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load i64, i64* %3, align 8
  %47 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %48 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %51 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %45, %37
  br label %53

53:                                               ; preds = %79, %52
  %54 = load i64*, i64** @yy_chk, align 8
  %55 = load i64*, i64** @yy_base, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %58, %59
  %61 = getelementptr inbounds i64, i64* %54, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %3, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %53
  %66 = load i64*, i64** @yy_def, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %3, align 8
  %72 = load i64, i64* %3, align 8
  %73 = icmp uge i64 %72, 157
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load i64*, i64** @yy_meta, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %74, %65
  br label %53

80:                                               ; preds = %53
  %81 = load i64*, i64** @yy_nxt, align 8
  %82 = load i64*, i64** @yy_base, align 8
  %83 = load i64, i64* %3, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %85, %86
  %88 = getelementptr inbounds i64, i64* %81, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %80
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %4, align 8
  br label %18

93:                                               ; preds = %18
  %94 = load i64, i64* %3, align 8
  ret i64 %94
}

declare dso_local i64 @YY_SC_TO_UI(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
