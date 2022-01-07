; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_add_to_include_set.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_add_to_include_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bitmap = type { i32 }
%struct.commit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bitmapped_commit = type { i32 }

@writer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap*, %struct.commit*)* @add_to_include_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_include_set(%struct.bitmap* %0, %struct.commit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitmapped_commit*, align 8
  store %struct.bitmap* %0, %struct.bitmap** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  %9 = load %struct.commit*, %struct.commit** %5, align 8
  %10 = getelementptr inbounds %struct.commit, %struct.commit* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @find_object_pos(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @bitmap_get(%struct.bitmap* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @writer, i32 0, i32 0), align 4
  %20 = load %struct.commit*, %struct.commit** %5, align 8
  %21 = getelementptr inbounds %struct.commit, %struct.commit* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @kh_get_oid_map(i32 %19, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @writer, i32 0, i32 0), align 4
  %27 = call i64 @kh_end(i32 %26)
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @writer, i32 0, i32 0), align 4
  %31 = load i64, i64* %6, align 8
  %32 = call %struct.bitmapped_commit* @kh_value(i32 %30, i64 %31)
  store %struct.bitmapped_commit* %32, %struct.bitmapped_commit** %8, align 8
  %33 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %34 = load %struct.bitmapped_commit*, %struct.bitmapped_commit** %8, align 8
  %35 = getelementptr inbounds %struct.bitmapped_commit, %struct.bitmapped_commit* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bitmap_or_ewah(%struct.bitmap* %33, i32 %36)
  store i32 0, i32* %3, align 4
  br label %42

38:                                               ; preds = %18
  %39 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @bitmap_set(%struct.bitmap* %39, i32 %40)
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %29, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @find_object_pos(i32*) #1

declare dso_local i64 @bitmap_get(%struct.bitmap*, i32) #1

declare dso_local i64 @kh_get_oid_map(i32, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local %struct.bitmapped_commit* @kh_value(i32, i64) #1

declare dso_local i32 @bitmap_or_ewah(%struct.bitmap*, i32) #1

declare dso_local i32 @bitmap_set(%struct.bitmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
