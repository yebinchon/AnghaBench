; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_kgdb.c_pt_regs_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_kgdb.c_pt_regs_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.pt_regs = type { i32 }

@GDB_BTR = common dso_local global i64 0, align 8
@pvr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GDB_PVR = common dso_local global i32 0, align 4
@GDB_REDR = common dso_local global i64 0, align 8
@GDB_RPID = common dso_local global i64 0, align 8
@GDB_RZPR = common dso_local global i64 0, align 8
@GDB_RTLBX = common dso_local global i64 0, align 8
@GDB_RTLBLO = common dso_local global i64 0, align 8
@GDB_RTLBHI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_regs_to_gdb_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = bitcast %struct.pt_regs* %8 to i64*
  store i64* %9, i64** %6, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i64*, i64** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  store i64 %19, i64* %23, align 8
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %10

27:                                               ; preds = %10
  %28 = call i32 asm sideeffect "mfs $0, rbtr;", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64*, i64** %3, align 8
  %32 = load i64, i64* @GDB_BTR, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 %30, i64* %33, align 8
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %50, %27
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %36, 1
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pvr, i32 0, i32 0), align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %3, align 8
  %45 = load i32, i32* @GDB_PVR, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %44, i64 %48
  store i64 %43, i64* %49, align 8
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %34

53:                                               ; preds = %34
  %54 = call i32 asm sideeffect "mfs $0, redr;", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !3
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64*, i64** %3, align 8
  %58 = load i64, i64* @GDB_REDR, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %56, i64* %59, align 8
  %60 = call i32 asm sideeffect "mfs $0, rpid;", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64*, i64** %3, align 8
  %64 = load i64, i64* @GDB_RPID, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %62, i64* %65, align 8
  %66 = call i32 asm sideeffect "mfs $0, rzpr;", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !5
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64*, i64** %3, align 8
  %70 = load i64, i64* @GDB_RZPR, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 %68, i64* %71, align 8
  %72 = call i32 asm sideeffect "mfs $0, rtlbx;", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !6
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64*, i64** %3, align 8
  %76 = load i64, i64* @GDB_RTLBX, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %74, i64* %77, align 8
  %78 = call i32 asm sideeffect "mfs $0, rtlblo;", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !7
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %3, align 8
  %82 = load i64, i64* @GDB_RTLBLO, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 %80, i64* %83, align 8
  %84 = call i32 asm sideeffect "mfs $0, rtlbhi;", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !8
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64*, i64** %3, align 8
  %88 = load i64, i64* @GDB_RTLBHI, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  store i64 %86, i64* %89, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 717}
!3 = !{i32 889}
!4 = !{i32 974}
!5 = !{i32 1059}
!6 = !{i32 1144}
!7 = !{i32 1231}
!8 = !{i32 1320}
