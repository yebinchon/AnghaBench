; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_copro_fault.c_copro_handle_mm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_copro_fault.c_copro_handle_mm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mm_struct = type { i32, i32* }
%struct.vm_area_struct = type { i64, i32 }

@EFAULT = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@DSISR_ISSTORE = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@DSISR_PROTFAULT = common dso_local global i64 0, align 8
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_SIGSEGV = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copro_handle_mm_fault(%struct.mm_struct* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %14 = icmp eq %struct.mm_struct* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %156

18:                                               ; preds = %4
  %19 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %156

26:                                               ; preds = %18
  %27 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 0
  %29 = call i32 @down_read(i32* %28)
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %32, i64 %33)
  store %struct.vm_area_struct* %34, %struct.vm_area_struct** %10, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %36 = icmp ne %struct.vm_area_struct* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %151

38:                                               ; preds = %26
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @VM_GROWSDOWN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %151

52:                                               ; preds = %44
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @expand_stack(%struct.vm_area_struct* %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %151

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %38
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @DSISR_ISSTORE, align 8
  %62 = and i64 %60, %61
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @VM_WRITE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %151

73:                                               ; preds = %65
  br label %93

74:                                               ; preds = %59
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @VM_READ, align 4
  %79 = load i32, i32* @VM_EXEC, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %151

84:                                               ; preds = %74
  %85 = call i32 (...) @radix_enabled()
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @DSISR_PROTFAULT, align 8
  %90 = and i64 %88, %89
  %91 = call i32 @WARN_ON_ONCE(i64 %90)
  br label %92

92:                                               ; preds = %87, %84
  br label %93

93:                                               ; preds = %92, %73
  store i32 0, i32* %12, align 4
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  br label %101

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  %103 = call i32 @handle_mm_fault(%struct.vm_area_struct* %94, i64 %95, i32 %102)
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @VM_FAULT_ERROR, align 4
  %108 = and i32 %106, %107
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %101
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @VM_FAULT_OOM, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %12, align 4
  br label %151

120:                                              ; preds = %111
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  %124 = load i32, i32* @VM_FAULT_SIGSEGV, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* @EFAULT, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %12, align 4
  br label %151

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131
  %133 = call i32 (...) @BUG()
  br label %134

134:                                              ; preds = %132, %101
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %150

145:                                              ; preds = %134
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %145, %140
  br label %151

151:                                              ; preds = %150, %128, %117, %83, %72, %57, %51, %37
  %152 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %153 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %152, i32 0, i32 0
  %154 = call i32 @up_read(i32* %153)
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %151, %23, %15
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @expand_stack(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @radix_enabled(...) #1

declare dso_local i32 @WARN_ON_ONCE(i64) #1

declare dso_local i32 @handle_mm_fault(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
