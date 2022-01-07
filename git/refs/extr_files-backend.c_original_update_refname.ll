; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_original_update_refname.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_original_update_refname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_update = type { i8*, %struct.ref_update* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ref_update*)* @original_update_refname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @original_update_refname(%struct.ref_update* %0) #0 {
  %2 = alloca %struct.ref_update*, align 8
  store %struct.ref_update* %0, %struct.ref_update** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.ref_update*, %struct.ref_update** %2, align 8
  %5 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %4, i32 0, i32 1
  %6 = load %struct.ref_update*, %struct.ref_update** %5, align 8
  %7 = icmp ne %struct.ref_update* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load %struct.ref_update*, %struct.ref_update** %2, align 8
  %10 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %9, i32 0, i32 1
  %11 = load %struct.ref_update*, %struct.ref_update** %10, align 8
  store %struct.ref_update* %11, %struct.ref_update** %2, align 8
  br label %3

12:                                               ; preds = %3
  %13 = load %struct.ref_update*, %struct.ref_update** %2, align 8
  %14 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  ret i8* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
