; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_describe.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i8* }
%struct.seq_file = type { i32 }
%struct.asymmetric_key_subtype = type { i32 (%struct.key*, %struct.seq_file*)* }
%struct.asymmetric_key_ids = type { %struct.asymmetric_key_id** }
%struct.asymmetric_key_id = type { i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%*phN\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*, %struct.seq_file*)* @asymmetric_key_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asymmetric_key_describe(%struct.key* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.asymmetric_key_subtype*, align 8
  %6 = alloca %struct.asymmetric_key_ids*, align 8
  %7 = alloca %struct.asymmetric_key_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %10 = load %struct.key*, %struct.key** %3, align 8
  %11 = call %struct.asymmetric_key_subtype* @asymmetric_key_subtype(%struct.key* %10)
  store %struct.asymmetric_key_subtype* %11, %struct.asymmetric_key_subtype** %5, align 8
  %12 = load %struct.key*, %struct.key** %3, align 8
  %13 = call %struct.asymmetric_key_ids* @asymmetric_key_ids(%struct.key* %12)
  store %struct.asymmetric_key_ids* %13, %struct.asymmetric_key_ids** %6, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = load %struct.key*, %struct.key** %3, align 8
  %16 = getelementptr inbounds %struct.key, %struct.key* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @seq_puts(%struct.seq_file* %14, i8* %17)
  %19 = load %struct.asymmetric_key_subtype*, %struct.asymmetric_key_subtype** %5, align 8
  %20 = icmp ne %struct.asymmetric_key_subtype* %19, null
  br i1 %20, label %21, label %71

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.asymmetric_key_subtype*, %struct.asymmetric_key_subtype** %5, align 8
  %25 = getelementptr inbounds %struct.asymmetric_key_subtype, %struct.asymmetric_key_subtype* %24, i32 0, i32 0
  %26 = load i32 (%struct.key*, %struct.seq_file*)*, i32 (%struct.key*, %struct.seq_file*)** %25, align 8
  %27 = load %struct.key*, %struct.key** %3, align 8
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = call i32 %26(%struct.key* %27, %struct.seq_file* %28)
  %30 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %6, align 8
  %31 = icmp ne %struct.asymmetric_key_ids* %30, null
  br i1 %31, label %32, label %66

32:                                               ; preds = %21
  %33 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %6, align 8
  %34 = getelementptr inbounds %struct.asymmetric_key_ids, %struct.asymmetric_key_ids* %33, i32 0, i32 0
  %35 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %34, align 8
  %36 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %35, i64 1
  %37 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %36, align 8
  %38 = icmp ne %struct.asymmetric_key_id* %37, null
  br i1 %38, label %39, label %66

39:                                               ; preds = %32
  %40 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %6, align 8
  %41 = getelementptr inbounds %struct.asymmetric_key_ids, %struct.asymmetric_key_ids* %40, i32 0, i32 0
  %42 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %41, align 8
  %43 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %42, i64 1
  %44 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %43, align 8
  store %struct.asymmetric_key_id* %44, %struct.asymmetric_key_id** %7, align 8
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = call i32 @seq_putc(%struct.seq_file* %45, i8 signext 32)
  %47 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %7, align 8
  %48 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %9, align 4
  %50 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %7, align 8
  %51 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %53, 4
  br i1 %54, label %55, label %61

55:                                               ; preds = %39
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 4
  %58 = load i8*, i8** %8, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %8, align 8
  store i32 4, i32* %9, align 4
  br label %61

61:                                               ; preds = %55, %39
  %62 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %64)
  br label %66

66:                                               ; preds = %61, %32, %21
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = call i32 @seq_puts(%struct.seq_file* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = call i32 @seq_putc(%struct.seq_file* %69, i8 signext 93)
  br label %71

71:                                               ; preds = %66, %2
  ret void
}

declare dso_local %struct.asymmetric_key_subtype* @asymmetric_key_subtype(%struct.key*) #1

declare dso_local %struct.asymmetric_key_ids* @asymmetric_key_ids(%struct.key*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
