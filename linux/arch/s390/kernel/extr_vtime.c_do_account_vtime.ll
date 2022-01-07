; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c_do_account_vtime.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c_do_account_vtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.task_struct = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@S390_lowcore = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@smp_cpu_mtid = common dso_local global i64 0, align 8
@jiffies_64 = common dso_local global i32 0, align 4
@mt_scaling_jiffies = common dso_local global i32 0, align 4
@CPUTIME_SYSTEM = common dso_local global i32 0, align 4
@CPUTIME_IRQ = common dso_local global i32 0, align 4
@CPUTIME_SOFTIRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @do_account_vtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_account_vtime(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 6), align 8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 7), align 8
  store i64 %11, i64* %4, align 8
  %12 = call { i64, i64 } asm sideeffect "\09stpt\09$0\0A\09stck\09$1", "=Q,=Q,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %13 = extractvalue { i64, i64 } %12, 0
  %14 = extractvalue { i64, i64 } %12, 1
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 6), align 8
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 7), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 7), align 8
  %16 = load i64, i64* %4, align 8
  %17 = sub nsw i64 %15, %16
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 6), align 8
  %19 = load i64, i64* %3, align 8
  %20 = sub nsw i64 %19, %18
  store i64 %20, i64* %3, align 8
  %21 = call i64 (...) @hardirq_count()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i64, i64* %3, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 2), align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 2), align 8
  br label %35

29:                                               ; preds = %1
  %30 = load i64, i64* %3, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 3), align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 3), align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i64, i64* @smp_cpu_mtid, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* @jiffies_64, align 4
  %40 = load i32, i32* @mt_scaling_jiffies, align 4
  %41 = call i32 @this_cpu_read(i32 %40)
  %42 = call i64 @time_after64(i32 %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 (...) @update_mt_scaling()
  br label %46

46:                                               ; preds = %44, %38, %35
  %47 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 5), align 4
  %51 = call i32 @READ_ONCE(i32 %50)
  %52 = call i64 @update_tsk_timer(i32* %49, i32 %51)
  store i64 %52, i64* %5, align 8
  %53 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 4), align 8
  %57 = call i32 @READ_ONCE(i32 %56)
  %58 = call i64 @update_tsk_timer(i32* %55, i32 %57)
  store i64 %58, i64* %6, align 8
  %59 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 3), align 4
  %63 = call i32 @READ_ONCE(i32 %62)
  %64 = call i64 @update_tsk_timer(i32* %61, i32 %63)
  store i64 %64, i64* %7, align 8
  %65 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 2), align 8
  %69 = call i32 @READ_ONCE(i32 %68)
  %70 = call i64 @update_tsk_timer(i32* %67, i32 %69)
  store i64 %70, i64* %8, align 8
  %71 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %72 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 1), align 4
  %75 = call i32 @READ_ONCE(i32 %74)
  %76 = call i64 @update_tsk_timer(i32* %73, i32 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load i64, i64* %6, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load i64, i64* %7, align 8
  %83 = sub nsw i64 %81, %82
  %84 = load i64, i64* %8, align 8
  %85 = sub nsw i64 %83, %84
  %86 = load i64, i64* %9, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 0), align 8
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 0), align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %46
  %95 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %96 = load i64, i64* %5, align 8
  %97 = call i64 @cputime_to_nsecs(i64 %96)
  %98 = call i32 @account_user_time(%struct.task_struct* %95, i64 %97)
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @scale_vtime(i64 %99)
  %101 = call i64 @cputime_to_nsecs(i64 %100)
  %102 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %103 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %101
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  br label %108

108:                                              ; preds = %94, %46
  %109 = load i64, i64* %6, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %113 = load i64, i64* %6, align 8
  %114 = call i64 @cputime_to_nsecs(i64 %113)
  %115 = call i32 @account_guest_time(%struct.task_struct* %112, i64 %114)
  %116 = load i64, i64* %6, align 8
  %117 = call i64 @scale_vtime(i64 %116)
  %118 = call i64 @cputime_to_nsecs(i64 %117)
  %119 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %120 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  br label %125

125:                                              ; preds = %111, %108
  %126 = load i64, i64* %7, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i32, i32* @CPUTIME_SYSTEM, align 4
  %132 = call i32 @account_system_index_scaled(%struct.task_struct* %129, i64 %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %125
  %134 = load i64, i64* %8, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load i32, i32* @CPUTIME_IRQ, align 4
  %140 = call i32 @account_system_index_scaled(%struct.task_struct* %137, i64 %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %133
  %142 = load i64, i64* %9, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load i32, i32* @CPUTIME_SOFTIRQ, align 4
  %148 = call i32 @account_system_index_scaled(%struct.task_struct* %145, i64 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i64, i64* %5, align 8
  %151 = load i64, i64* %6, align 8
  %152 = add nsw i64 %150, %151
  %153 = load i64, i64* %7, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i64, i64* %8, align 8
  %156 = add nsw i64 %154, %155
  %157 = load i64, i64* %9, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @virt_timer_forward(i64 %158)
  ret i32 %159
}

declare dso_local i64 @hardirq_count(...) #1

declare dso_local i64 @time_after64(i32, i32) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @update_mt_scaling(...) #1

declare dso_local i64 @update_tsk_timer(i32*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @account_user_time(%struct.task_struct*, i64) #1

declare dso_local i64 @cputime_to_nsecs(i64) #1

declare dso_local i64 @scale_vtime(i64) #1

declare dso_local i32 @account_guest_time(%struct.task_struct*, i64) #1

declare dso_local i32 @account_system_index_scaled(%struct.task_struct*, i64, i32) #1

declare dso_local i32 @virt_timer_forward(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1493, i32 1512}
