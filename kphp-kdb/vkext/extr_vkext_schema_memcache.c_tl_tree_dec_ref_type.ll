; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tl_tree_dec_ref_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tl_tree_dec_ref_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }
%struct.tl_tree_type = type { i32, %struct.tl_tree_type*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@total_ref_cnt = common dso_local global i32 0, align 4
@dynamic_tree_nodes = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_tree_dec_ref_type(%struct.tl_tree* %0) #0 {
  %2 = alloca %struct.tl_tree*, align 8
  %3 = alloca %struct.tl_tree_type*, align 8
  %4 = alloca i32, align 4
  store %struct.tl_tree* %0, %struct.tl_tree** %2, align 8
  %5 = load i32, i32* @total_ref_cnt, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @total_ref_cnt, align 4
  %7 = load %struct.tl_tree*, %struct.tl_tree** %2, align 8
  %8 = bitcast %struct.tl_tree* %7 to i8*
  %9 = bitcast i8* %8 to %struct.tl_tree_type*
  store %struct.tl_tree_type* %9, %struct.tl_tree_type** %3, align 8
  %10 = load %struct.tl_tree_type*, %struct.tl_tree_type** %3, align 8
  %11 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.tl_tree_type*, %struct.tl_tree_type** %3, align 8
  %16 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %54

21:                                               ; preds = %1
  %22 = load i32, i32* @dynamic_tree_nodes, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @dynamic_tree_nodes, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %38, %21
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.tl_tree_type*, %struct.tl_tree_type** %3, align 8
  %27 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.tl_tree_type*, %struct.tl_tree_type** %3, align 8
  %32 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %31, i32 0, i32 1
  %33 = load %struct.tl_tree_type*, %struct.tl_tree_type** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %33, i64 %35
  %37 = call i32 @DEC_REF(%struct.tl_tree_type* byval(%struct.tl_tree_type) align 8 %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.tl_tree_type*, %struct.tl_tree_type** %3, align 8
  %43 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %42, i32 0, i32 1
  %44 = load %struct.tl_tree_type*, %struct.tl_tree_type** %43, align 8
  %45 = load %struct.tl_tree_type*, %struct.tl_tree_type** %3, align 8
  %46 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 8, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @zzefree(%struct.tl_tree_type* %44, i32 %50)
  %52 = load %struct.tl_tree_type*, %struct.tl_tree_type** %3, align 8
  %53 = call i32 @zzefree(%struct.tl_tree_type* %52, i32 32)
  br label %54

54:                                               ; preds = %41, %20
  ret void
}

declare dso_local i32 @DEC_REF(%struct.tl_tree_type* byval(%struct.tl_tree_type) align 8) #1

declare dso_local i32 @zzefree(%struct.tl_tree_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
