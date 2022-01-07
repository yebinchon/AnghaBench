; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_fault.c_do_pf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_fault.c_do_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.pt_regs = type { i32 }

@FAULT_FLAG_ALLOW_RETRY = common dso_local global i32 0, align 4
@FAULT_FLAG_KILLABLE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@FAULT_FLAG_USER = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@VM_FAULT_BADMAP = common dso_local global i32 0, align 4
@VM_FAULT_BADACCESS = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@BUS_ADRERR = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SEGV_ACCERR = common dso_local global i32 0, align 4
@SEGV_MAPERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.pt_regs*)* @do_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pf(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %14 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %15 = load i32, i32* @FAULT_FLAG_KILLABLE, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %17, %struct.task_struct** %8, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 2
  %20 = load %struct.mm_struct*, %struct.mm_struct** %19, align 8
  store %struct.mm_struct* %20, %struct.mm_struct** %9, align 8
  %21 = call i64 (...) @faulthandler_disabled()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %25 = icmp ne %struct.mm_struct* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %3
  br label %173

27:                                               ; preds = %23
  %28 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %29 = call i64 @user_mode(%struct.pt_regs* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @FAULT_FLAG_USER, align 4
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %6, align 4
  %37 = xor i32 %36, 18
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %41 = load i32, i32* %13, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %45 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %44, i32 0, i32 0
  %46 = call i32 @down_read_trylock(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %43
  %49 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %50 = call i64 @user_mode(%struct.pt_regs* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @search_exception_tables(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %173

59:                                               ; preds = %52, %48
  br label %60

60:                                               ; preds = %112, %59
  %61 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %62 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %61, i32 0, i32 0
  %63 = call i32 @down_read(i32* %62)
  br label %66

64:                                               ; preds = %43
  %65 = call i32 (...) @might_sleep()
  br label %66

66:                                               ; preds = %64, %60
  %67 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %72 = call i32 @__do_pf(%struct.mm_struct* %67, i64 %68, i32 %69, i32 %70, %struct.task_struct* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @VM_FAULT_RETRY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %79 = call i64 @fatal_signal_pending(%struct.task_struct* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %179

82:                                               ; preds = %77, %66
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @VM_FAULT_ERROR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %118, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %118

92:                                               ; preds = %87
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %99 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %107

102:                                              ; preds = %92
  %103 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %104 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %102, %97
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @VM_FAULT_RETRY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %13, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %13, align 4
  br label %60

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %87, %82
  %119 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %120 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %119, i32 0, i32 0
  %121 = call i32 @up_read(i32* %120)
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @VM_FAULT_ERROR, align 4
  %124 = load i32, i32* @VM_FAULT_BADMAP, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @VM_FAULT_BADACCESS, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %122, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i64 @likely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %179

135:                                              ; preds = %118
  %136 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %137 = call i64 @user_mode(%struct.pt_regs* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  br label %173

140:                                              ; preds = %135
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @VM_FAULT_OOM, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = call i32 (...) @pagefault_out_of_memory()
  store i32 0, i32* %4, align 4
  br label %179

147:                                              ; preds = %140
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* @SIGBUS, align 4
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* @BUS_ADRERR, align 4
  store i32 %154, i32* %11, align 4
  br label %166

155:                                              ; preds = %147
  %156 = load i32, i32* @SIGSEGV, align 4
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @VM_FAULT_BADACCESS, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* @SEGV_ACCERR, align 4
  br label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @SEGV_MAPERR, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  store i32 %165, i32* %11, align 4
  br label %166

166:                                              ; preds = %164, %152
  %167 = load i64, i64* %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %172 = call i32 @__do_user_fault(i64 %167, i32 %168, i32 %169, i32 %170, %struct.pt_regs* %171)
  store i32 0, i32* %4, align 4
  br label %179

173:                                              ; preds = %139, %58, %26
  %174 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %175 = load i64, i64* %5, align 8
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %178 = call i32 @__do_kernel_fault(%struct.mm_struct* %174, i64 %175, i32 %176, %struct.pt_regs* %177)
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %173, %166, %145, %134, %81
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i64 @faulthandler_disabled(...) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @search_exception_tables(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @__do_pf(%struct.mm_struct*, i64, i32, i32, %struct.task_struct*) #1

declare dso_local i64 @fatal_signal_pending(%struct.task_struct*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pagefault_out_of_memory(...) #1

declare dso_local i32 @__do_user_fault(i64, i32, i32, i32, %struct.pt_regs*) #1

declare dso_local i32 @__do_kernel_fault(%struct.mm_struct*, i64, i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
