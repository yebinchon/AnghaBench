; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/extr_symbol.c_sym_find.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/extr_symbol.c_sym_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i64, %struct.symbol* }

@symbol_yes = common dso_local global %struct.symbol zeroinitializer, align 8
@symbol_mod = common dso_local global %struct.symbol zeroinitializer, align 8
@symbol_no = common dso_local global %struct.symbol zeroinitializer, align 8
@SYMBOL_HASHSIZE = common dso_local global i32 0, align 4
@symbol_hash = common dso_local global %struct.symbol** null, align 8
@SYMBOL_CONST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @sym_find(i8* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.symbol* null, %struct.symbol** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.symbol* null, %struct.symbol** %2, align 8
  br label %69

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %28 [
    i32 121, label %25
    i32 109, label %26
    i32 110, label %27
  ]

25:                                               ; preds = %20
  store %struct.symbol* @symbol_yes, %struct.symbol** %2, align 8
  br label %69

26:                                               ; preds = %20
  store %struct.symbol* @symbol_mod, %struct.symbol** %2, align 8
  br label %69

27:                                               ; preds = %20
  store %struct.symbol* @symbol_no, %struct.symbol** %2, align 8
  br label %69

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %15, %9
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strhash(i8* %30)
  %32 = load i32, i32* @SYMBOL_HASHSIZE, align 4
  %33 = srem i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.symbol**, %struct.symbol*** @symbol_hash, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.symbol*, %struct.symbol** %34, i64 %36
  %38 = load %struct.symbol*, %struct.symbol** %37, align 8
  store %struct.symbol* %38, %struct.symbol** %4, align 8
  br label %39

39:                                               ; preds = %63, %29
  %40 = load %struct.symbol*, %struct.symbol** %4, align 8
  %41 = icmp ne %struct.symbol* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load %struct.symbol*, %struct.symbol** %4, align 8
  %44 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.symbol*, %struct.symbol** %4, align 8
  %49 = getelementptr inbounds %struct.symbol, %struct.symbol* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @strcmp(i64 %50, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %47
  %55 = load %struct.symbol*, %struct.symbol** %4, align 8
  %56 = getelementptr inbounds %struct.symbol, %struct.symbol* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SYMBOL_CONST, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %67

62:                                               ; preds = %54, %47, %42
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.symbol*, %struct.symbol** %4, align 8
  %65 = getelementptr inbounds %struct.symbol, %struct.symbol* %64, i32 0, i32 2
  %66 = load %struct.symbol*, %struct.symbol** %65, align 8
  store %struct.symbol* %66, %struct.symbol** %4, align 8
  br label %39

67:                                               ; preds = %61, %39
  %68 = load %struct.symbol*, %struct.symbol** %4, align 8
  store %struct.symbol* %68, %struct.symbol** %2, align 8
  br label %69

69:                                               ; preds = %67, %27, %26, %25, %8
  %70 = load %struct.symbol*, %struct.symbol** %2, align 8
  ret %struct.symbol* %70
}

declare dso_local i32 @strhash(i8*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
