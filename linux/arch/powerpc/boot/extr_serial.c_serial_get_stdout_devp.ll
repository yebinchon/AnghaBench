; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_serial.c_serial_get_stdout_devp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_serial.c_serial_get_stdout_devp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PROP_LEN = common dso_local global i32 0, align 4
@MAX_PATH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"linux,stdout-path\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"stdout-path\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @serial_get_stdout_devp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @serial_get_stdout_devp() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PROP_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @MAX_PATH_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %14 = call i8* @finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  br label %45

18:                                               ; preds = %0
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* @MAX_PATH_LEN, align 4
  %21 = call i64 @getprop(i8* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %13, i32 %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* @MAX_PATH_LEN, align 4
  %26 = call i64 @getprop(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %13, i32 %25)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23, %18
  %29 = call i8* @finddevice(i8* %13)
  store i8* %29, i8** %2, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %45

33:                                               ; preds = %28
  %34 = load i8*, i8** %2, align 8
  %35 = trunc i64 %8 to i32
  %36 = call i64 @getprop(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %10, i32 %35)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %2, align 8
  store i8* %42, i8** %1, align 8
  store i32 1, i32* %6, align 4
  br label %46

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %43, %23
  br label %45

45:                                               ; preds = %44, %32, %17
  store i8* null, i8** %1, align 8
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i8*, i8** %1, align 8
  ret i8* %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @finddevice(i8*) #2

declare dso_local i64 @getprop(i8*, i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
