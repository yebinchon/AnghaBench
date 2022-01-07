; ModuleID = '/home/carl/AnghaBench/jq/src/extr_lexer.c_yy_try_NUL_trans.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_lexer.c_yy_try_NUL_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyguts_t = type { i8*, i64, i8* }

@yy_accept = common dso_local global i64* null, align 8
@yy_chk = common dso_local global i64* null, align 8
@yy_base = common dso_local global i64* null, align 8
@yy_def = common dso_local global i64* null, align 8
@yy_meta = common dso_local global i64* null, align 8
@yy_nxt = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @yy_try_NUL_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @yy_try_NUL_trans(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.yyguts_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.yyguts_t*
  store %struct.yyguts_t* %10, %struct.yyguts_t** %6, align 8
  %11 = load %struct.yyguts_t*, %struct.yyguts_t** %6, align 8
  %12 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  store i64 1, i64* %8, align 8
  %14 = load i64*, i64** @yy_accept, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.yyguts_t*, %struct.yyguts_t** %6, align 8
  %22 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.yyguts_t*, %struct.yyguts_t** %6, align 8
  %25 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  br label %26

26:                                               ; preds = %19, %2
  br label %27

27:                                               ; preds = %53, %26
  %28 = load i64*, i64** @yy_chk, align 8
  %29 = load i64*, i64** @yy_base, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %32, %33
  %35 = getelementptr inbounds i64, i64* %28, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %27
  %40 = load i64*, i64** @yy_def, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %3, align 8
  %47 = icmp uge i64 %46, 157
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i64*, i64** @yy_meta, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %48, %39
  br label %27

54:                                               ; preds = %27
  %55 = load i64*, i64** @yy_nxt, align 8
  %56 = load i64*, i64** @yy_base, align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %59, %60
  %62 = getelementptr inbounds i64, i64* %55, i64 %61
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %3, align 8
  %64 = load i64, i64* %3, align 8
  %65 = icmp eq i64 %64, 156
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %5, align 4
  %67 = load %struct.yyguts_t*, %struct.yyguts_t** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %73

71:                                               ; preds = %54
  %72 = load i64, i64* %3, align 8
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i64 [ 0, %70 ], [ %72, %71 ]
  ret i64 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
