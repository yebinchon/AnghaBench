; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_truncate_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_truncate_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile_checkpoint = type { i32 }

@pack_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cannot truncate pack to skip duplicate\00", align 1
@pack_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashfile_checkpoint*)* @truncate_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truncate_pack(%struct.hashfile_checkpoint* %0) #0 {
  %2 = alloca %struct.hashfile_checkpoint*, align 8
  store %struct.hashfile_checkpoint* %0, %struct.hashfile_checkpoint** %2, align 8
  %3 = load i32, i32* @pack_file, align 4
  %4 = load %struct.hashfile_checkpoint*, %struct.hashfile_checkpoint** %2, align 8
  %5 = call i64 @hashfile_truncate(i32 %3, %struct.hashfile_checkpoint* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @die_errno(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load %struct.hashfile_checkpoint*, %struct.hashfile_checkpoint** %2, align 8
  %11 = getelementptr inbounds %struct.hashfile_checkpoint, %struct.hashfile_checkpoint* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @pack_size, align 4
  ret void
}

declare dso_local i64 @hashfile_truncate(i32, %struct.hashfile_checkpoint*) #1

declare dso_local i32 @die_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
