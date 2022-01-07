; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-parse.c_nb_reader_parse_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-parse.c_nb_reader_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nb_reader = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nb_reader_parse_int(%struct.nb_reader* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nb_reader*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nb_reader* %0, %struct.nb_reader** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.nb_reader*, %struct.nb_reader** %5, align 8
  %11 = call i32 @nb_reader_getc(%struct.nb_reader* %10)
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 45
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %17 = load %struct.nb_reader*, %struct.nb_reader** %5, align 8
  %18 = call i32 @nb_reader_getc(%struct.nb_reader* %17)
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @isdigit(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %20
  store i32 0, i32* %4, align 4
  br label %69

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 214748364
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %69

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 10
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 48
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %69

45:                                               ; preds = %35
  %46 = load %struct.nb_reader*, %struct.nb_reader** %5, align 8
  %47 = call i32 @nb_reader_getc(%struct.nb_reader* %46)
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @isdigit(i32 %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i1 [ false, %49 ], [ %57, %53 ]
  br i1 %59, label %31, label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %44, %34, %29
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @nb_reader_getc(%struct.nb_reader*) #1

declare dso_local i64 @isdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
