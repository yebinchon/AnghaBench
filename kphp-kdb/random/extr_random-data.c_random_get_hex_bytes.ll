; ModuleID = '/home/carl/AnghaBench/kphp-kdb/random/extr_random-data.c_random_get_hex_bytes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/random/extr_random-data.c_random_get_hex_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random_get_hex_bytes.hcyf = internal global [16 x i8] c"0123456789abcdef", align 16
@qtotal = common dso_local global i64 0, align 8
@buffer = common dso_local global i32* null, align 8
@qleft = common dso_local global i64 0, align 8
@qsize = common dso_local global i64 0, align 8
@B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @random_get_hex_bytes(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i64, i64* @qtotal, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %50

18:                                               ; preds = %16
  %19 = load i32*, i32** @buffer, align 8
  %20 = load i64, i64* @qleft, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** @buffer, align 8
  %24 = load i64, i64* @qleft, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = lshr i32 %26, 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* @random_get_hex_bytes.hcyf, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 15
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* @random_get_hex_bytes.hcyf, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  store i8 %37, i8* %38, align 1
  %40 = load i64, i64* @qleft, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* @qleft, align 8
  %42 = load i64, i64* @qsize, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %18
  store i64 0, i64* @qleft, align 8
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %5, align 4
  %48 = load i64, i64* @qtotal, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* @qtotal, align 8
  br label %9

50:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %60, %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 65536
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i1 [ false, %51 ], [ %57, %55 ]
  br i1 %59, label %60, label %80

60:                                               ; preds = %58
  %61 = call i32 @bbs_next_random_byte(i32* @B)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = lshr i32 %62, 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* @random_get_hex_bytes.hcyf, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %3, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 15
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* @random_get_hex_bytes.hcyf, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %3, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %51

80:                                               ; preds = %58
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @bbs_next_random_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
