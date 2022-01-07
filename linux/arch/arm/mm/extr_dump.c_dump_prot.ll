; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dump.c_dump_prot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dump.c_dump_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32, i32 }
%struct.prot_bits = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, %struct.prot_bits*, i64)* @dump_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_prot(%struct.pg_state* %0, %struct.prot_bits* %1, i64 %2) #0 {
  %4 = alloca %struct.pg_state*, align 8
  %5 = alloca %struct.prot_bits*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.pg_state* %0, %struct.pg_state** %4, align 8
  store %struct.prot_bits* %1, %struct.prot_bits** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %44, %3
  %10 = load i32, i32* %7, align 4
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %9
  %15 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %16 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.prot_bits*, %struct.prot_bits** %5, align 8
  %19 = getelementptr inbounds %struct.prot_bits, %struct.prot_bits* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %17, %20
  %22 = load %struct.prot_bits*, %struct.prot_bits** %5, align 8
  %23 = getelementptr inbounds %struct.prot_bits, %struct.prot_bits* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load %struct.prot_bits*, %struct.prot_bits** %5, align 8
  %28 = getelementptr inbounds %struct.prot_bits, %struct.prot_bits* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %8, align 8
  br label %34

30:                                               ; preds = %14
  %31 = load %struct.prot_bits*, %struct.prot_bits** %5, align 8
  %32 = getelementptr inbounds %struct.prot_bits, %struct.prot_bits* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %8, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %39 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @pt_dump_seq_printf(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %37, %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load %struct.prot_bits*, %struct.prot_bits** %5, align 8
  %48 = getelementptr inbounds %struct.prot_bits, %struct.prot_bits* %47, i32 1
  store %struct.prot_bits* %48, %struct.prot_bits** %5, align 8
  br label %9

49:                                               ; preds = %9
  ret void
}

declare dso_local i32 @pt_dump_seq_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
