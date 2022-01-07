; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_free_kids.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_free_kids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asymmetric_key_ids = type { %struct.asymmetric_key_ids** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asymmetric_key_ids*)* @asymmetric_key_free_kids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asymmetric_key_free_kids(%struct.asymmetric_key_ids* %0) #0 {
  %2 = alloca %struct.asymmetric_key_ids*, align 8
  %3 = alloca i32, align 4
  store %struct.asymmetric_key_ids* %0, %struct.asymmetric_key_ids** %2, align 8
  %4 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %2, align 8
  %5 = icmp ne %struct.asymmetric_key_ids* %4, null
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %23, %6
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %2, align 8
  %10 = getelementptr inbounds %struct.asymmetric_key_ids, %struct.asymmetric_key_ids* %9, i32 0, i32 0
  %11 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.asymmetric_key_ids** %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %2, align 8
  %16 = getelementptr inbounds %struct.asymmetric_key_ids, %struct.asymmetric_key_ids* %15, i32 0, i32 0
  %17 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %17, i64 %19
  %21 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %20, align 8
  %22 = call i32 @kfree(%struct.asymmetric_key_ids* %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %2, align 8
  %28 = call i32 @kfree(%struct.asymmetric_key_ids* %27)
  br label %29

29:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.asymmetric_key_ids**) #1

declare dso_local i32 @kfree(%struct.asymmetric_key_ids*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
