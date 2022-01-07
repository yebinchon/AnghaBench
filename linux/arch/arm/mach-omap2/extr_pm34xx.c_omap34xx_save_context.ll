; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm34xx.c_omap34xx_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm34xx.c_omap34xx_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @omap34xx_save_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap34xx_save_context(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = call i8* asm "mrc p15, 0, $0, c1, c0, 1", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i8* %4, i8** %3, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %6, i8*** %2, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8**, i8*** %2, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %9, i8*** %2, align 8
  store i8* %7, i8** %8, align 8
  %10 = call i8* asm "mrc p15, 1, $0, c9, c0, 2", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !3
  store i8* %10, i8** %3, align 8
  %11 = load i8**, i8*** %2, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %12, i8*** %2, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %11, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8**, i8*** %2, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %2, align 8
  store i8* %13, i8** %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 248}
!3 = !{i32 328}
