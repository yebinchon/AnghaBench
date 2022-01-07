; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_ce_compare_gitlink.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_ce_compare_gitlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*)* @ce_compare_gitlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce_compare_gitlink(%struct.cache_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca %struct.object_id, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  %5 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %6 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @resolve_gitlink_ref(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %4)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %13 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %12, i32 0, i32 0
  %14 = call i32 @oideq(%struct.object_id* %4, i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %11, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @resolve_gitlink_ref(i32, i8*, %struct.object_id*) #1

declare dso_local i32 @oideq(%struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
