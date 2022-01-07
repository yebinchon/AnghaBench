; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/emma/markeins/extr_setup.c_markeins_machine_restart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/emma/markeins/extr_setup.c_markeins_machine_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@markeins_machine_restart.back_to_prom = internal global void ()* inttoptr (i64 3217031168 to void ()*), align 8
@.str = private unnamed_addr constant [35 x i8] c"cannot EMMA2RH Mark-eins restart.\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"restart.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @markeins_machine_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @markeins_machine_restart(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @markeins_led(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %5 = load void ()*, void ()** @markeins_machine_restart.back_to_prom, align 8
  call void %5()
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @markeins_led(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
