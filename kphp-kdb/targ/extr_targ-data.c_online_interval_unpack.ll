; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_online_interval_unpack.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_online_interval_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ocur_now = common dso_local global i32 0, align 4
@OHead = common dso_local global i32* null, align 8
@OLIST_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @online_interval_unpack(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ocur_now, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %95

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @online_convert_time(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @online_convert_time(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %45, %29
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** @OHead, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @online_list_unpack(i32* %36, i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %31

48:                                               ; preds = %31
  br label %87

49:                                               ; preds = %20
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %65, %49
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @OLIST_COUNT, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** @OHead, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @online_list_unpack(i32* %56, i32* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %5, align 8
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %51

68:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %83, %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** @OHead, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @online_list_unpack(i32* %74, i32* %78)
  %80 = load i32*, i32** %5, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %5, align 8
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %69

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86, %48
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = ptrtoint i32* %88 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %87, %19
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @online_convert_time(i32) #1

declare dso_local i32 @online_list_unpack(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
