; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_signal.c_handle_signal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_signal.c_handle_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.mips_abi* }
%struct.mips_abi = type { i32 (i8*, %struct.ksignal.0*, %struct.pt_regs*, i32*)*, i32 (i8*, %struct.ksignal.1*, %struct.pt_regs*, i32*)*, %struct.TYPE_12__* }
%struct.ksignal.0 = type opaque
%struct.pt_regs = type { i32*, i32 }
%struct.ksignal.1 = type opaque
%struct.TYPE_12__ = type { i32, i32 }
%struct.ksignal = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@current = common dso_local global %struct.TYPE_14__* null, align 8
@EINTR = common dso_local global i8* null, align 8
@SA_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksignal*, %struct.pt_regs*)* @handle_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_signal(%struct.ksignal* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.ksignal*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mips_abi*, align 8
  %8 = alloca i8*, align 8
  store %struct.ksignal* %0, %struct.ksignal** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %9 = call i32* (...) @sigmask_to_save()
  store i32* %9, i32** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.mips_abi*, %struct.mips_abi** %12, align 8
  store %struct.mips_abi* %13, %struct.mips_abi** %7, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %21 = call i32 @dsemul_thread_rollback(%struct.pt_regs* %20)
  %22 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %86

28:                                               ; preds = %2
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %81 [
    i32 128, label %34
    i32 131, label %34
    i32 129, label %41
    i32 130, label %58
  ]

34:                                               ; preds = %28, %28
  %35 = load i8*, i8** @EINTR, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %36, i32* %40, align 4
  br label %81

41:                                               ; preds = %28
  %42 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %43 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SA_RESTART, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %41
  %51 = load i8*, i8** @EINTR, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %52, i32* %56, align 4
  br label %81

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %28, %57
  %59 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 26
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 7
  store i32 %63, i32* %67, align 4
  %68 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32 %72, i32* %76, align 4
  %77 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 4
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %58, %28, %50, %34
  %82 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %83 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %2
  %87 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %88 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %89 = call i32 @rseq_signal_deliver(%struct.ksignal* %87, %struct.pt_regs* %88)
  %90 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %91 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %90, i32 0, i32 0
  %92 = load %struct.mips_abi*, %struct.mips_abi** %7, align 8
  %93 = call i64 @sig_uses_siginfo(%struct.TYPE_13__* %91, %struct.mips_abi* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %86
  %96 = load %struct.mips_abi*, %struct.mips_abi** %7, align 8
  %97 = getelementptr inbounds %struct.mips_abi, %struct.mips_abi* %96, i32 0, i32 0
  %98 = load i32 (i8*, %struct.ksignal.0*, %struct.pt_regs*, i32*)*, i32 (i8*, %struct.ksignal.0*, %struct.pt_regs*, i32*)** %97, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load %struct.mips_abi*, %struct.mips_abi** %7, align 8
  %101 = getelementptr inbounds %struct.mips_abi, %struct.mips_abi* %100, i32 0, i32 2
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr i8, i8* %99, i64 %105
  %107 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %108 = bitcast %struct.ksignal* %107 to %struct.ksignal.0*
  %109 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 %98(i8* %106, %struct.ksignal.0* %108, %struct.pt_regs* %109, i32* %110)
  store i32 %111, i32* %6, align 4
  br label %129

112:                                              ; preds = %86
  %113 = load %struct.mips_abi*, %struct.mips_abi** %7, align 8
  %114 = getelementptr inbounds %struct.mips_abi, %struct.mips_abi* %113, i32 0, i32 1
  %115 = load i32 (i8*, %struct.ksignal.1*, %struct.pt_regs*, i32*)*, i32 (i8*, %struct.ksignal.1*, %struct.pt_regs*, i32*)** %114, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load %struct.mips_abi*, %struct.mips_abi** %7, align 8
  %118 = getelementptr inbounds %struct.mips_abi, %struct.mips_abi* %117, i32 0, i32 2
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr i8, i8* %116, i64 %122
  %124 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %125 = bitcast %struct.ksignal* %124 to %struct.ksignal.1*
  %126 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 %115(i8* %123, %struct.ksignal.1* %125, %struct.pt_regs* %126, i32* %127)
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %112, %95
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %132 = call i32 @signal_setup_done(i32 %130, %struct.ksignal* %131, i32 0)
  ret void
}

declare dso_local i32* @sigmask_to_save(...) #1

declare dso_local i32 @dsemul_thread_rollback(%struct.pt_regs*) #1

declare dso_local i32 @rseq_signal_deliver(%struct.ksignal*, %struct.pt_regs*) #1

declare dso_local i64 @sig_uses_siginfo(%struct.TYPE_13__*, %struct.mips_abi*) #1

declare dso_local i32 @signal_setup_done(i32, %struct.ksignal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
