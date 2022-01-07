; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_random_field_element_magnitude.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_random_field_element_magnitude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @random_field_element_magnitude(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = call i32 @secp256k1_rand_int(i32 9)
  store i32 %5, i32* %4, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = call i32 @secp256k1_fe_normalize(%struct.TYPE_10__* %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %19

11:                                               ; preds = %1
  %12 = call i32 @secp256k1_fe_clear(%struct.TYPE_10__* %3)
  %13 = call i32 @secp256k1_fe_negate(%struct.TYPE_10__* %3, %struct.TYPE_10__* %3, i32 0)
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  %16 = call i32 @secp256k1_fe_mul_int(%struct.TYPE_10__* %3, i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = call i32 @secp256k1_fe_add(%struct.TYPE_10__* %17, %struct.TYPE_10__* %3)
  br label %19

19:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @secp256k1_rand_int(i32) #1

declare dso_local i32 @secp256k1_fe_normalize(%struct.TYPE_10__*) #1

declare dso_local i32 @secp256k1_fe_clear(%struct.TYPE_10__*) #1

declare dso_local i32 @secp256k1_fe_negate(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @secp256k1_fe_mul_int(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @secp256k1_fe_add(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
