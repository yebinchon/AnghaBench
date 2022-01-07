; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_misc.c___putstr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_misc.c___putstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@early_serial_base = common dso_local global i64 0, align 8
@lines = common dso_local global i32 0, align 4
@cols = common dso_local global i32 0, align 4
@boot_params = common dso_local global %struct.TYPE_4__* null, align 8
@vidmem = common dso_local global i8* null, align 8
@vidport = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__putstr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* @early_serial_base, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %23, %10
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @serial_putchar(i8 signext 13)
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  %26 = load i8, i8* %24, align 1
  %27 = call i32 @serial_putchar(i8 signext %26)
  br label %12

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* @lines, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @cols, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29
  br label %123

36:                                               ; preds = %32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @boot_params, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @boot_params, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %91, %36
  %46 = load i8*, i8** %2, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %2, align 8
  %48 = load i8, i8* %46, align 1
  store i8 %48, i8* %6, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %45
  %52 = load i8, i8* %6, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @lines, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = call i32 (...) @scroll()
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %55
  br label %91

65:                                               ; preds = %51
  %66 = load i8, i8* %6, align 1
  %67 = load i8*, i8** @vidmem, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @cols, align 4
  %70 = load i32, i32* %4, align 4
  %71 = mul nsw i32 %69, %70
  %72 = add nsw i32 %68, %71
  %73 = mul nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %67, i64 %74
  store i8 %66, i8* %75, align 1
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @cols, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* @lines, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = call i32 (...) @scroll()
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %80
  br label %90

90:                                               ; preds = %89, %65
  br label %91

91:                                               ; preds = %90, %64
  br label %45

92:                                               ; preds = %45
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @boot_params, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @boot_params, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @cols, align 4
  %103 = load i32, i32* %4, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %101, %104
  %106 = mul nsw i32 %105, 2
  store i32 %106, i32* %5, align 4
  %107 = load i64, i64* @vidport, align 8
  %108 = call i32 @outb(i32 14, i64 %107)
  %109 = load i32, i32* %5, align 4
  %110 = ashr i32 %109, 9
  %111 = and i32 255, %110
  %112 = load i64, i64* @vidport, align 8
  %113 = add nsw i64 %112, 1
  %114 = call i32 @outb(i32 %111, i64 %113)
  %115 = load i64, i64* @vidport, align 8
  %116 = call i32 @outb(i32 15, i64 %115)
  %117 = load i32, i32* %5, align 4
  %118 = ashr i32 %117, 1
  %119 = and i32 255, %118
  %120 = load i64, i64* @vidport, align 8
  %121 = add nsw i64 %120, 1
  %122 = call i32 @outb(i32 %119, i64 %121)
  br label %123

123:                                              ; preds = %92, %35
  ret void
}

declare dso_local i32 @serial_putchar(i8 signext) #1

declare dso_local i32 @scroll(...) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
