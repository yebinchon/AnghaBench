; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_symbol.c_sym_inline_pack.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_symbol.c_sym_inline_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pack_table = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @sym_inline_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_inline_pack(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 6
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %106

16:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %58, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %6, align 1
  %27 = load i8, i8* %6, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %106

31:                                               ; preds = %21
  %32 = load i8*, i8** @pack_table, align 8
  %33 = load i8, i8* %6, align 1
  %34 = sext i8 %33 to i32
  %35 = call i8* @strchr(i8* %32, i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %106

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** @pack_table, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sgt i32 %47, 27
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 %52, 6
  %54 = add nsw i32 %53, 2
  %55 = shl i32 %51, %54
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %17

61:                                               ; preds = %17
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %93, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %6, align 1
  %75 = load i8*, i8** @pack_table, align 8
  %76 = load i8, i8* %6, align 1
  %77 = sext i8 %76 to i32
  %78 = call i8* @strchr(i8* %75, i32 %77)
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** @pack_table, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 %87, 5
  %89 = add nsw i32 %88, 2
  %90 = shl i32 %86, %89
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %69
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %65

96:                                               ; preds = %65
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, 3
  store i32 %98, i32* %3, align 4
  br label %106

99:                                               ; preds = %61
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, 6
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %103, %102, %96, %38, %30, %15
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i8* @strchr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
