; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec.c___do_machine_kexec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec.c___do_machine_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__do_machine_kexec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__do_machine_kexec(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32 (i32*, i32)*, align 8
  %4 = alloca %struct.kimage*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.kimage*
  store %struct.kimage* %6, %struct.kimage** %4, align 8
  %7 = call i32 (...) @s390_reset_system()
  %8 = load %struct.kimage*, %struct.kimage** %4, align 8
  %9 = getelementptr inbounds %struct.kimage, %struct.kimage* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @page_to_phys(i32 %10)
  %12 = inttoptr i64 %11 to i32 (i32*, i32)*
  store i32 (i32*, i32)* %12, i32 (i32*, i32)** %3, align 8
  %13 = call i32 @__arch_local_irq_stnsm(i32 251)
  %14 = load i32 (i32*, i32)*, i32 (i32*, i32)** %3, align 8
  %15 = load %struct.kimage*, %struct.kimage** %4, align 8
  %16 = getelementptr inbounds %struct.kimage, %struct.kimage* %15, i32 0, i32 1
  %17 = load %struct.kimage*, %struct.kimage** %4, align 8
  %18 = getelementptr inbounds %struct.kimage, %struct.kimage* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 %14(i32* %16, i32 %19)
  %21 = call i32 (...) @disabled_wait()
  ret void
}

declare dso_local i32 @s390_reset_system(...) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @__arch_local_irq_stnsm(i32) #1

declare dso_local i32 @disabled_wait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
