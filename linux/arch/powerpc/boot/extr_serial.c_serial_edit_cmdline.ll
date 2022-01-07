; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_serial.c_serial_edit_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_serial.c_serial_edit_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.serial_console_data* }
%struct.serial_console_data = type { i8 (...)*, i32 (i8)*, i64 (...)* }

@console_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"\08 \08\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @serial_edit_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_edit_cmdline(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca %struct.serial_console_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.serial_console_data*, %struct.serial_console_data** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ops, i32 0, i32 0), align 8
  store %struct.serial_console_data* %12, %struct.serial_console_data** %11, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %102, %3
  %23 = load %struct.serial_console_data*, %struct.serial_console_data** %11, align 8
  %24 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %23, i32 0, i32 2
  %25 = load i64 (...)*, i64 (...)** %24, align 8
  %26 = call i64 (...) %25()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %100

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %98, %28
  %30 = load %struct.serial_console_data*, %struct.serial_console_data** %11, align 8
  %31 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %30, i32 0, i32 0
  %32 = load i8 (...)*, i8 (...)** %31, align 8
  %33 = call signext i8 (...) %32()
  store i8 %33, i8* %9, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 10
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i8, i8* %9, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 13
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i1 [ false, %29 ], [ %39, %36 ]
  br i1 %41, label %42, label %99

42:                                               ; preds = %40
  %43 = load i8, i8* %9, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 127
  br i1 %49, label %50, label %61

50:                                               ; preds = %46, %42
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %56, i8** %10, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %8, align 4
  %59 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %54, %50
  br label %98

61:                                               ; preds = %46
  %62 = load i8, i8* %9, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 24
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i8, i8* %9, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 21
  br i1 %68, label %69, label %81

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %74, %69
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = icmp ne i8* %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %76, i8** %10, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %8, align 4
  %79 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %70

80:                                               ; preds = %70
  br label %97

81:                                               ; preds = %65
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i8, i8* %9, align 1
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %10, align 8
  store i8 %86, i8* %87, align 1
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load %struct.serial_console_data*, %struct.serial_console_data** %11, align 8
  %92 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %91, i32 0, i32 1
  %93 = load i32 (i8)*, i32 (i8)** %92, align 8
  %94 = load i8, i8* %9, align 1
  %95 = call i32 %93(i8 signext %94)
  br label %96

96:                                               ; preds = %85, %81
  br label %97

97:                                               ; preds = %96, %80
  br label %98

98:                                               ; preds = %97, %60
  br label %29

99:                                               ; preds = %40
  br label %107

100:                                              ; preds = %22
  %101 = call i32 @udelay(i32 1000)
  br label %102

102:                                              ; preds = %100
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ult i32 %103, %105
  br i1 %106, label %22, label %107

107:                                              ; preds = %102, %99
  %108 = load i8*, i8** %10, align 8
  store i8 0, i8* %108, align 1
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
