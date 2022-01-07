; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/mm/extr_init.c_ia64_init_addr_space.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/mm/extr_init.c_ia64_init_addr_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, i8* }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i8* null, align 8
@VM_DATA_DEFAULT_FLAGS = common dso_local global i32 0, align 4
@VM_GROWSUP = common dso_local global i32 0, align 4
@VM_ACCOUNT = common dso_local global i32 0, align 4
@MMAP_PAGE_ZERO = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@_PAGE_MA_NAT = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_init_addr_space() #0 {
  %1 = alloca %struct.vm_area_struct*, align 8
  %2 = call i32 (...) @ia64_set_rbs_bot()
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = call %struct.vm_area_struct* @vm_area_alloc(%struct.TYPE_6__* %5)
  store %struct.vm_area_struct* %6, %struct.vm_area_struct** %1, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %8 = icmp ne %struct.vm_area_struct* %7, null
  br i1 %8, label %9, label %66

9:                                                ; preds = %0
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %11 = call i32 @vma_set_anonymous(%struct.vm_area_struct* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PAGE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** @PAGE_SIZE, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr i8, i8* %23, i64 %24
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @VM_DATA_DEFAULT_FLAGS, align 4
  %29 = load i32, i32* @VM_GROWSUP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @VM_ACCOUNT, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @vm_get_page_prot(i32 %37)
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @down_write(i32* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %50 = call i64 @insert_vm_struct(%struct.TYPE_6__* %48, %struct.vm_area_struct* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %9
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @up_write(i32* %56)
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %59 = call i32 @vm_area_free(%struct.vm_area_struct* %58)
  br label %130

60:                                               ; preds = %9
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @up_write(i32* %64)
  br label %66

66:                                               ; preds = %60, %0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MMAP_PAGE_ZERO, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %130, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call %struct.vm_area_struct* @vm_area_alloc(%struct.TYPE_6__* %76)
  store %struct.vm_area_struct* %77, %struct.vm_area_struct** %1, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %79 = icmp ne %struct.vm_area_struct* %78, null
  br i1 %79, label %80, label %129

80:                                               ; preds = %73
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %82 = call i32 @vma_set_anonymous(%struct.vm_area_struct* %81)
  %83 = load i8*, i8** @PAGE_SIZE, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @PAGE_READONLY, align 4
  %87 = call i32 @pgprot_val(i32 %86)
  %88 = load i32, i32* @_PAGE_MA_NAT, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @__pgprot(i32 %89)
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @VM_READ, align 4
  %94 = load i32, i32* @VM_MAYREAD, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @VM_IO, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @VM_DONTEXPAND, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @VM_DONTDUMP, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = call i32 @down_write(i32* %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %113 = call i64 @insert_vm_struct(%struct.TYPE_6__* %111, %struct.vm_area_struct* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %80
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = call i32 @up_write(i32* %119)
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %122 = call i32 @vm_area_free(%struct.vm_area_struct* %121)
  br label %130

123:                                              ; preds = %80
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = call i32 @up_write(i32* %127)
  br label %129

129:                                              ; preds = %123, %73
  br label %130

130:                                              ; preds = %52, %115, %129, %66
  ret void
}

declare dso_local i32 @ia64_set_rbs_bot(...) #1

declare dso_local %struct.vm_area_struct* @vm_area_alloc(%struct.TYPE_6__*) #1

declare dso_local i32 @vma_set_anonymous(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_get_page_prot(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @insert_vm_struct(%struct.TYPE_6__*, %struct.vm_area_struct*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @vm_area_free(%struct.vm_area_struct*) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @pgprot_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
