; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_dump_bitmap.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_dump_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.ewah_bitmap = type { i32 }

@hashwrite_ewah_helper = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to write bitmap index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashfile*, %struct.ewah_bitmap*)* @dump_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_bitmap(%struct.hashfile* %0, %struct.ewah_bitmap* %1) #0 {
  %3 = alloca %struct.hashfile*, align 8
  %4 = alloca %struct.ewah_bitmap*, align 8
  store %struct.hashfile* %0, %struct.hashfile** %3, align 8
  store %struct.ewah_bitmap* %1, %struct.ewah_bitmap** %4, align 8
  %5 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %6 = load i32, i32* @hashwrite_ewah_helper, align 4
  %7 = load %struct.hashfile*, %struct.hashfile** %3, align 8
  %8 = call i64 @ewah_serialize_to(%struct.ewah_bitmap* %5, i32 %6, %struct.hashfile* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  ret void
}

declare dso_local i64 @ewah_serialize_to(%struct.ewah_bitmap*, i32, %struct.hashfile*) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
