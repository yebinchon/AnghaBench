; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_fill_pt_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_fill_pt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i8*, i8*, i8*, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @kvmppc_fill_pt_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_fill_pt_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %7 = call i8* asm "mr $0, 1", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i8* %7, i8** %3, align 8
  %8 = call i8* asm "mflr $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i8* %8, i8** %6, align 8
  %9 = call i8* asm "mfmsr $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  store i8* %9, i8** %5, align 8
  %10 = call i8* asm "bl 1f; 1: mflr $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  store i8* %10, i8** %4, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %12 = call i32 @memset(%struct.pt_regs* %11, i32 0, i32 32)
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 3
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  store i8* %13, i8** %17, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  ret void
}

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 379}
!3 = !{i32 408}
!4 = !{i32 436}
!5 = !{i32 466}
