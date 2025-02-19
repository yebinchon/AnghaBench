; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_list_encoder_finish.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_list_encoder_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_encoder = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_encoder_finish(%struct.list_encoder* %0) #0 {
  %2 = alloca %struct.list_encoder*, align 8
  store %struct.list_encoder* %0, %struct.list_encoder** %2, align 8
  %3 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %4 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %13 [
    i32 130, label %6
    i32 131, label %6
    i32 129, label %7
    i32 128, label %10
  ]

6:                                                ; preds = %1, %1
  br label %15

7:                                                ; preds = %1
  %8 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %9 = call i32 @interpolative_encoder_finish(%struct.list_encoder* %8)
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %12 = call i32 @llrun_encoder_finish(%struct.list_encoder* %11)
  br label %15

13:                                               ; preds = %1
  %14 = call i32 @assert(i32 0)
  br label %15

15:                                               ; preds = %13, %10, %7, %6
  ret void
}

declare dso_local i32 @interpolative_encoder_finish(%struct.list_encoder*) #1

declare dso_local i32 @llrun_encoder_finish(%struct.list_encoder*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
