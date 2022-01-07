; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_arm-charlcd.c_charlcd_4bit_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_arm-charlcd.c_charlcd_4bit_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32 }

@HD_SET_DDRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charlcd*, i32, i8*)* @charlcd_4bit_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charlcd_4bit_print(%struct.charlcd* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.charlcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 40, i32* %7, align 4
  br label %17

16:                                               ; preds = %12
  br label %45

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %11
  %19 = load %struct.charlcd*, %struct.charlcd** %4, align 8
  %20 = load i32, i32* @HD_SET_DDRAM, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @charlcd_4bit_command(%struct.charlcd* %19, i32 %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %42, %18
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 40
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i1 [ false, %24 ], [ %31, %29 ]
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  %35 = load %struct.charlcd*, %struct.charlcd** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @charlcd_4bit_char(%struct.charlcd* %35, i8 signext %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %24

45:                                               ; preds = %16, %32
  ret void
}

declare dso_local i32 @charlcd_4bit_command(%struct.charlcd*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @charlcd_4bit_char(%struct.charlcd*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
