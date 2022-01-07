; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_async.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, i32 }
%struct.skcipher_request = type { i32 }

@SKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skcipher_walk_async(%struct.skcipher_walk* %0, %struct.skcipher_request* %1) #0 {
  %3 = alloca %struct.skcipher_walk*, align 8
  %4 = alloca %struct.skcipher_request*, align 8
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %3, align 8
  store %struct.skcipher_request* %1, %struct.skcipher_request** %4, align 8
  %5 = load i32, i32* @SKCIPHER_WALK_PHYS, align 4
  %6 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %7 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %11 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %10, i32 0, i32 0
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %14 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %15 = call i32 @skcipher_walk_skcipher(%struct.skcipher_walk* %13, %struct.skcipher_request* %14)
  ret i32 %15
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skcipher_walk_skcipher(%struct.skcipher_walk*, %struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
