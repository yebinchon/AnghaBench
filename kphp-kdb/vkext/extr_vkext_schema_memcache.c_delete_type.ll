; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_delete_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_delete_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_type = type { i32, i32, %struct.tl_type*, i64 }

@tl_types = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_type(%struct.tl_type* %0) #0 {
  %2 = alloca %struct.tl_type*, align 8
  %3 = alloca i32, align 4
  store %struct.tl_type* %0, %struct.tl_type** %2, align 8
  %4 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %5 = icmp ne %struct.tl_type* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %74

7:                                                ; preds = %1
  %8 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %9 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %14 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @strlen(i64 %15)
  %17 = call i32 @ADD_PFREE(i32 %16)
  %18 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %19 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @zzstrfree(i64 %20)
  br label %22

22:                                               ; preds = %12, %7
  %23 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %24 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %22
  %28 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %29 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %28, i32 0, i32 2
  %30 = load %struct.tl_type*, %struct.tl_type** %29, align 8
  %31 = icmp ne %struct.tl_type* %30, null
  br i1 %31, label %32, label %68

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %36 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %41 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %40, i32 0, i32 2
  %42 = load %struct.tl_type*, %struct.tl_type** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %42, i64 %44
  %46 = call i32 @delete_combinator(%struct.tl_type* byval(%struct.tl_type) align 8 %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %33

50:                                               ; preds = %33
  %51 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %52 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %51, i32 0, i32 2
  %53 = load %struct.tl_type*, %struct.tl_type** %52, align 8
  %54 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %55 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @zzfree(%struct.tl_type* %53, i32 %59)
  %61 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %62 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @ADD_PFREE(i32 %66)
  br label %68

68:                                               ; preds = %50, %27, %22
  %69 = load i32, i32* @tl_types, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* @tl_types, align 4
  %71 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %72 = call i32 @zzfree(%struct.tl_type* %71, i32 24)
  %73 = call i32 @ADD_PFREE(i32 24)
  br label %74

74:                                               ; preds = %68, %6
  ret void
}

declare dso_local i32 @ADD_PFREE(i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @zzstrfree(i64) #1

declare dso_local i32 @delete_combinator(%struct.tl_type* byval(%struct.tl_type) align 8) #1

declare dso_local i32 @zzfree(%struct.tl_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
