; ModuleID = '/home/carl/AnghaBench/lede/package/utils/usbreset/src/extr_usbreset.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/usbreset/src/extr_usbreset.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbentry = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%3d/%3d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%4x:%4x\00", align 1
@.str.2 = private unnamed_addr constant [171 x i8] c"Usage:\0A  usbreset PPPP:VVVV - reset by product and vendor id\0A  usbreset BBB/DDD   - reset by bus and device number\0A  usbreset \22Product\22 - reset by product name\0A\0ADevices:\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"No such device found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbentry*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7)
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call %struct.usbentry* @find_device(i32* %6, i32* %7, i32* null, i32* null, i8* null)
  store %struct.usbentry* %18, %struct.usbentry** %8, align 8
  br label %49

19:                                               ; preds = %11, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* %7)
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call %struct.usbentry* @find_device(i32* null, i32* null, i32* %6, i32* %7, i8* null)
  store %struct.usbentry* %29, %struct.usbentry** %8, align 8
  br label %48

30:                                               ; preds = %22, %19
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = icmp slt i32 %37, 128
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call %struct.usbentry* @find_device(i32* null, i32* null, i32* null, i32* null, i8* %42)
  store %struct.usbentry* %43, %struct.usbentry** %8, align 8
  br label %47

44:                                               ; preds = %33, %30
  %45 = call i32 @printf(i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 (...) @list_devices()
  store i32 1, i32* %3, align 4
  br label %58

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %28
  br label %49

49:                                               ; preds = %48, %17
  %50 = load %struct.usbentry*, %struct.usbentry** %8, align 8
  %51 = icmp ne %struct.usbentry* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %58

55:                                               ; preds = %49
  %56 = load %struct.usbentry*, %struct.usbentry** %8, align 8
  %57 = call i32 @reset_device(%struct.usbentry* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %52, %44
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local %struct.usbentry* @find_device(i32*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @list_devices(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @reset_device(%struct.usbentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
