; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_io_trapped.c_register_trapped_io.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_io_trapped.c_register_trapped_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapped_io = type { i32, i32, i32, i64, %struct.resource* }
%struct.resource = type { i64, i64 }
%struct.page = type { i32 }

@TRAPPED_PAGES_MAX = common dso_local global i32 0, align 4
@trapped_io_disable = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"trapped io 0x%08lx overrides %s 0x%08lx\0A\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mmio\00", align 1
@IO_TRAPPED_MAGIC = common dso_local global i32 0, align 4
@trapped_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"unable to install trapped io filter\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@trapped_io = common dso_local global i32 0, align 4
@trapped_mem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_trapped_io(%struct.trapped_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trapped_io*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.trapped_io* %0, %struct.trapped_io** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load i32, i32* @TRAPPED_PAGES_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca %struct.page*, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @trapped_io_disable, align 4
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %149

20:                                               ; preds = %1
  %21 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %22 = ptrtoint %struct.trapped_io* %21 to i64
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = and i64 %22, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %147

29:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %54, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %33 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %38 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %37, i32 0, i32 4
  %39 = load %struct.resource*, %struct.resource** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %39, i64 %41
  store %struct.resource* %42, %struct.resource** %4, align 8
  %43 = load %struct.resource*, %struct.resource** %4, align 8
  %44 = call i32 @resource_size(%struct.resource* %43)
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = call i64 @roundup(i32 %44, i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %5, align 8
  %49 = load %struct.resource*, %struct.resource** %4, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %36
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %30

57:                                               ; preds = %30
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @hweight_long(i64 %58)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %147

62:                                               ; preds = %57
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @PAGE_SHIFT, align 8
  %65 = lshr i64 %63, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @TRAPPED_PAGES_MAX, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %147

71:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %82, %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %78 = call %struct.page* @virt_to_page(%struct.trapped_io* %77)
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.page*, %struct.page** %15, i64 %80
  store %struct.page* %78, %struct.page** %81, align 8
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %72

85:                                               ; preds = %72
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @VM_MAP, align 4
  %88 = load i32, i32* @PAGE_NONE, align 4
  %89 = call i64 @vmap(%struct.page** %15, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %91 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %93 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %85
  br label %147

97:                                               ; preds = %85
  store i64 0, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %135, %97
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %101 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %98
  %105 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %106 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %105, i32 0, i32 4
  %107 = load %struct.resource*, %struct.resource** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.resource, %struct.resource* %107, i64 %109
  store %struct.resource* %110, %struct.resource** %4, align 8
  %111 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %112 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %5, align 8
  %115 = add i64 %113, %114
  %116 = load %struct.resource*, %struct.resource** %4, align 8
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @IORESOURCE_IO, align 4
  %120 = sext i32 %119 to i64
  %121 = and i64 %118, %120
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %125 = load %struct.resource*, %struct.resource** %4, align 8
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %115, i8* %124, i64 %127)
  %129 = load %struct.resource*, %struct.resource** %4, align 8
  %130 = call i32 @resource_size(%struct.resource* %129)
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = call i64 @roundup(i32 %130, i32 %131)
  %133 = load i64, i64* %5, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %5, align 8
  br label %135

135:                                              ; preds = %104
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %98

138:                                              ; preds = %98
  %139 = load i32, i32* @IO_TRAPPED_MAGIC, align 4
  %140 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %141 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %143 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %142, i32 0, i32 1
  %144 = call i32 @INIT_LIST_HEAD(i32* %143)
  %145 = call i32 @spin_lock_irq(i32* @trapped_lock)
  %146 = call i32 @spin_unlock_irq(i32* @trapped_lock)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %149

147:                                              ; preds = %96, %70, %61, %28
  %148 = call i32 @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %149

149:                                              ; preds = %147, %138, %19
  %150 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @roundup(i32, i32) #2

declare dso_local i32 @resource_size(%struct.resource*) #2

declare dso_local i32 @hweight_long(i64) #2

declare dso_local %struct.page* @virt_to_page(%struct.trapped_io*) #2

declare dso_local i64 @vmap(%struct.page**, i32, i32, i32) #2

declare dso_local i32 @pr_info(i8*, i64, i8*, i64) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @pr_warning(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
