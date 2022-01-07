; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas.c_va_rtas_call_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas.c_va_rtas_call_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtas_args = type { i8**, i8**, i8*, i8*, i8* }

@__u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtas_args*, i32, i32, i32, i32)* @va_rtas_call_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @va_rtas_call_unlocked(%struct.rtas_args* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rtas_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtas_args* %0, %struct.rtas_args** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i8* @cpu_to_be32(i32 %12)
  %14 = load %struct.rtas_args*, %struct.rtas_args** %6, align 8
  %15 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = load %struct.rtas_args*, %struct.rtas_args** %6, align 8
  %19 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i8* @cpu_to_be32(i32 %20)
  %22 = load %struct.rtas_args*, %struct.rtas_args** %6, align 8
  %23 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.rtas_args*, %struct.rtas_args** %6, align 8
  %25 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %24, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load %struct.rtas_args*, %struct.rtas_args** %6, align 8
  %31 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %30, i32 0, i32 0
  store i8** %29, i8*** %31, align 8
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %47, %5
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @__u32, align 4
  %39 = call i32 @va_arg(i32 %37, i32 %38)
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.rtas_args*, %struct.rtas_args** %6, align 8
  %42 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %40, i8** %46, align 8
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %32

50:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %62, %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.rtas_args*, %struct.rtas_args** %6, align 8
  %57 = getelementptr inbounds %struct.rtas_args, %struct.rtas_args* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  store i8* null, i8** %61, align 8
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %51

65:                                               ; preds = %51
  %66 = load %struct.rtas_args*, %struct.rtas_args** %6, align 8
  %67 = call i32 @__pa(%struct.rtas_args* %66)
  %68 = call i32 @enter_rtas(i32 %67)
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @va_arg(i32, i32) #1

declare dso_local i32 @enter_rtas(i32) #1

declare dso_local i32 @__pa(%struct.rtas_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
