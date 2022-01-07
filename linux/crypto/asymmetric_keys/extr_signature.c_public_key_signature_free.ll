; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_signature.c_public_key_signature_free.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_signature.c_public_key_signature_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.public_key_signature = type { %struct.public_key_signature*, %struct.public_key_signature*, %struct.public_key_signature** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @public_key_signature_free(%struct.public_key_signature* %0) #0 {
  %2 = alloca %struct.public_key_signature*, align 8
  %3 = alloca i32, align 4
  store %struct.public_key_signature* %0, %struct.public_key_signature** %2, align 8
  %4 = load %struct.public_key_signature*, %struct.public_key_signature** %2, align 8
  %5 = icmp ne %struct.public_key_signature* %4, null
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %23, %6
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.public_key_signature*, %struct.public_key_signature** %2, align 8
  %10 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %9, i32 0, i32 2
  %11 = load %struct.public_key_signature**, %struct.public_key_signature*** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.public_key_signature** %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = load %struct.public_key_signature*, %struct.public_key_signature** %2, align 8
  %16 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %15, i32 0, i32 2
  %17 = load %struct.public_key_signature**, %struct.public_key_signature*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.public_key_signature*, %struct.public_key_signature** %17, i64 %19
  %21 = load %struct.public_key_signature*, %struct.public_key_signature** %20, align 8
  %22 = call i32 @kfree(%struct.public_key_signature* %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.public_key_signature*, %struct.public_key_signature** %2, align 8
  %28 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %27, i32 0, i32 1
  %29 = load %struct.public_key_signature*, %struct.public_key_signature** %28, align 8
  %30 = call i32 @kfree(%struct.public_key_signature* %29)
  %31 = load %struct.public_key_signature*, %struct.public_key_signature** %2, align 8
  %32 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %31, i32 0, i32 0
  %33 = load %struct.public_key_signature*, %struct.public_key_signature** %32, align 8
  %34 = call i32 @kfree(%struct.public_key_signature* %33)
  %35 = load %struct.public_key_signature*, %struct.public_key_signature** %2, align 8
  %36 = call i32 @kfree(%struct.public_key_signature* %35)
  br label %37

37:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.public_key_signature**) #1

declare dso_local i32 @kfree(%struct.public_key_signature*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
