; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_decode_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_decode_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.x86_emulate_ctxt*, i32, i32)* @decode_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode_register(%struct.x86_emulate_ctxt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %10 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 4
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 3
  %31 = call i8* @reg_rmw(%struct.x86_emulate_ctxt* %28, i32 %30)
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %32, i8** %7, align 8
  br label %37

33:                                               ; preds = %24, %21, %16
  %34 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i8* @reg_rmw(%struct.x86_emulate_ctxt* %34, i32 %35)
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i8*, i8** %7, align 8
  ret i8* %38
}

declare dso_local i8* @reg_rmw(%struct.x86_emulate_ctxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
