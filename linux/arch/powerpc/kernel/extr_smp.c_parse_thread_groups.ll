; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp.c_parse_thread_groups.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp.c_parse_thread_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.thread_groups = type { i32, i32, i32, i8** }

@MAX_THREAD_LIST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ibm,thread-groups\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.thread_groups*, i32)* @parse_thread_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_thread_groups(%struct.device_node* %0, %struct.thread_groups* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.thread_groups*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.thread_groups* %1, %struct.thread_groups** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @MAX_THREAD_LIST_SIZE, align 4
  %16 = add nsw i32 3, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8*, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32 @of_property_read_u32_array(%struct.device_node* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %19, i32 3)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %101

26:                                               ; preds = %3
  %27 = getelementptr inbounds i8*, i8** %19, i64 0
  %28 = load i8*, i8** %27, align 16
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.thread_groups*, %struct.thread_groups** %6, align 8
  %31 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds i8*, i8** %19, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.thread_groups*, %struct.thread_groups** %6, align 8
  %36 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds i8*, i8** %19, i64 2
  %38 = load i8*, i8** %37, align 16
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.thread_groups*, %struct.thread_groups** %6, align 8
  %41 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.thread_groups*, %struct.thread_groups** %6, align 8
  %43 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %57, label %47

47:                                               ; preds = %26
  %48 = load %struct.thread_groups*, %struct.thread_groups** %6, align 8
  %49 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.thread_groups*, %struct.thread_groups** %6, align 8
  %54 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %47, %26
  %58 = load i32, i32* @ENODATA, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %101

60:                                               ; preds = %52
  %61 = load %struct.thread_groups*, %struct.thread_groups** %6, align 8
  %62 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.thread_groups*, %struct.thread_groups** %6, align 8
  %65 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %12, align 8
  %69 = load %struct.device_node*, %struct.device_node** %5, align 8
  %70 = load i64, i64* %12, align 8
  %71 = add i64 3, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @of_property_read_u32_array(%struct.device_node* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %19, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %101

78:                                               ; preds = %60
  %79 = getelementptr inbounds i8*, i8** %19, i64 3
  store i8** %79, i8*** %11, align 8
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %97, %78
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %12, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load i8**, i8*** %11, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.thread_groups*, %struct.thread_groups** %6, align 8
  %92 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %91, i32 0, i32 3
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %90, i8** %96, align 8
  br label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %80

100:                                              ; preds = %80
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %101

101:                                              ; preds = %100, %76, %57, %24
  %102 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
