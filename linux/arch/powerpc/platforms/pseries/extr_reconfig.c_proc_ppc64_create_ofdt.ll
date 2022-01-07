; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_reconfig.c_proc_ppc64_create_ofdt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_reconfig.c_proc_ppc64_create_ofdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"powerpc/ofdt\00", align 1
@ofdt_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @proc_ppc64_create_ofdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_ppc64_create_ofdt() #0 {
  %1 = alloca %struct.proc_dir_entry*, align 8
  %2 = call %struct.proc_dir_entry* @proc_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 128, i32* null, i32* @ofdt_fops)
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %1, align 8
  %3 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %1, align 8
  %4 = icmp ne %struct.proc_dir_entry* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %1, align 8
  %7 = call i32 @proc_set_size(%struct.proc_dir_entry* %6, i32 0)
  br label %8

8:                                                ; preds = %5, %0
  ret i32 0
}

declare dso_local %struct.proc_dir_entry* @proc_create(i8*, i32, i32*, i32*) #1

declare dso_local i32 @proc_set_size(%struct.proc_dir_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
