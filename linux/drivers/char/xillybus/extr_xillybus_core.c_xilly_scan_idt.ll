; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xilly_scan_idt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xilly_scan_idt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_endpoint = type { i32, i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i8* }
%struct.xilly_idt_handle = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"IDT device name list overflow. Aborting.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Corrupt IDT device name list. Aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilly_endpoint*, %struct.xilly_idt_handle*)* @xilly_scan_idt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilly_scan_idt(%struct.xilly_endpoint* %0, %struct.xilly_idt_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xilly_endpoint*, align 8
  %5 = alloca %struct.xilly_idt_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.xilly_endpoint* %0, %struct.xilly_endpoint** %4, align 8
  store %struct.xilly_idt_handle* %1, %struct.xilly_idt_handle** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %12 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %13, i64 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %24 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -4
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.xilly_idt_handle*, %struct.xilly_idt_handle** %5, align 8
  %32 = getelementptr inbounds %struct.xilly_idt_handle, %struct.xilly_idt_handle* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %60, %2
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ule i8* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  br i1 %45, label %46, label %63

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ule i8* %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  %54 = load i8, i8* %52, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %51, %47
  %58 = phi i1 [ false, %47 ], [ %56, %51 ]
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  br label %47

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %35

63:                                               ; preds = %44
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ugt i8* %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %71 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %109

76:                                               ; preds = %63
  %77 = load i8*, i8** %9, align 8
  %78 = load %struct.xilly_idt_handle*, %struct.xilly_idt_handle** %5, align 8
  %79 = getelementptr inbounds %struct.xilly_idt_handle, %struct.xilly_idt_handle* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %81 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = add nsw i32 3, %88
  %90 = sub nsw i32 %82, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, 3
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %76
  %95 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %96 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %109

101:                                              ; preds = %76
  %102 = load i32, i32* %10, align 4
  %103 = ashr i32 %102, 2
  %104 = load %struct.xilly_idt_handle*, %struct.xilly_idt_handle** %5, align 8
  %105 = getelementptr inbounds %struct.xilly_idt_handle, %struct.xilly_idt_handle* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %108 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %101, %94, %69
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
