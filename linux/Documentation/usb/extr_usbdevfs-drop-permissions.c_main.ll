; ModuleID = '/home/carl/AnghaBench/linux/Documentation/usb/extr_usbdevfs-drop-permissions.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/Documentation/usb/extr_usbdevfs-drop-permissions.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to open file\0A\00", align 1
@USBDEVFS_GET_CAPABILITIES = common dso_local global i32 0, align 4
@USBDEVFS_CAP_DROP_PRIVILEGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"DROP_PRIVILEGES not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [203 x i8] c"Available options:\0A[0] Exit now\0A[1] Reset device. Should fail if device is in use\0A[2] Claim 4 interfaces. Should succeed where not in use\0A[3] Narrow interface permission mask\0AWhich option shall I run?: \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Insert new mask: \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"I don't recognize that\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Which test shall I run next?: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = call i32 @open(i8* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %62

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @USBDEVFS_GET_CAPABILITIES, align 4
  %22 = call i32 @ioctl(i32 %20, i32 %21, i32* %7)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @USBDEVFS_CAP_DROP_PRIVILEGES, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %59

29:                                               ; preds = %19
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @drop_privileges(i32 %30, i32 -1)
  %32 = call i32 @printf(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %53, %29
  %34 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %51 [
    i32 0, label %38
    i32 1, label %39
    i32 2, label %42
    i32 3, label %45
  ]

38:                                               ; preds = %36
  br label %56

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @reset_device(i32 %40)
  br label %53

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @claim_some_intf(i32 %43)
  br label %53

45:                                               ; preds = %36
  %46 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %6)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @drop_privileges(i32 %48, i32 %49)
  br label %53

51:                                               ; preds = %36
  %52 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %45, %42, %39
  %54 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @close(i32 %57)
  store i32 0, i32* %3, align 4
  br label %63

59:                                               ; preds = %27
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @close(i32 %60)
  br label %62

62:                                               ; preds = %59, %17
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @drop_privileges(i32, i32) #1

declare dso_local i32 @scanf(i8*, i32*) #1

declare dso_local i32 @reset_device(i32) #1

declare dso_local i32 @claim_some_intf(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
