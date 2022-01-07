; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_fit3.c_fit3_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_fit3.c_fit3_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @fit3_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fit3_read_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %115 [
    i32 0, label %15
    i32 1, label %56
    i32 2, label %94
  ]

15:                                               ; preds = %3
  %16 = call i32 @w2(i32 12)
  %17 = call i32 @w0(i32 16)
  %18 = call i32 @w2(i32 8)
  %19 = call i32 @w2(i32 12)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %51, %15
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %22, 2
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  %26 = call i32 @w2(i32 13)
  %27 = call i32 (...) @r1()
  store i32 %27, i32* %8, align 4
  %28 = call i32 @w2(i32 15)
  %29 = call i32 (...) @r1()
  store i32 %29, i32* %9, align 4
  %30 = call i32 @w2(i32 12)
  %31 = call i32 (...) @r1()
  store i32 %31, i32* %10, align 4
  %32 = call i32 @w2(i32 14)
  %33 = call i32 (...) @r1()
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call signext i8 @j44(i32 %34, i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 2, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 %36, i8* %41, align 1
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call signext i8 @j44(i32 %42, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 2, %46
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  store i8 %44, i8* %50, align 1
  br label %51

51:                                               ; preds = %25
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %20

54:                                               ; preds = %20
  %55 = call i32 @w2(i32 12)
  br label %115

56:                                               ; preds = %3
  %57 = call i32 @w2(i32 12)
  %58 = call i32 @w0(i32 144)
  %59 = call i32 @w2(i32 8)
  %60 = call i32 @w2(i32 12)
  %61 = call i32 @w2(i32 236)
  %62 = call i32 @w2(i32 238)
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %88, %56
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sdiv i32 %65, 2
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %63
  %69 = call i32 @w2(i32 239)
  %70 = call i32 (...) @r0()
  store i32 %70, i32* %8, align 4
  %71 = call i32 @w2(i32 238)
  %72 = call i32 (...) @r0()
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 2, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 %74, i8* %79, align 1
  %80 = load i32, i32* %9, align 4
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 2, %83
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  store i8 %81, i8* %87, align 1
  br label %88

88:                                               ; preds = %68
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %63

91:                                               ; preds = %63
  %92 = call i32 @w2(i32 236)
  %93 = call i32 @w2(i32 12)
  br label %115

94:                                               ; preds = %3
  %95 = call i32 @w2(i32 12)
  %96 = call i32 @w0(i32 144)
  %97 = call i32 @w2(i32 8)
  %98 = call i32 @w2(i32 12)
  %99 = call i32 @w2(i32 236)
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %110, %94
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = call signext i8 (...) @r4()
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8 %105, i8* %109, align 1
  br label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %100

113:                                              ; preds = %100
  %114 = call i32 @w2(i32 12)
  br label %115

115:                                              ; preds = %3, %113, %91, %54
  ret void
}

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local signext i8 @j44(i32, i32) #1

declare dso_local i32 @r0(...) #1

declare dso_local signext i8 @r4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
