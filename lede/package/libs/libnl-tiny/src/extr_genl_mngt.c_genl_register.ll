; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl_mngt.c_genl_register.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl_mngt.c_genl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cache_ops = type { i64, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.nl_cache_ops* }
%struct.TYPE_3__ = type { i32, i32 }

@NETLINK_GENERIC = common dso_local global i64 0, align 8
@NLE_PROTO_MISMATCH = common dso_local global i32 0, align 4
@NLE_INVAL = common dso_local global i32 0, align 4
@genl_msg_parser = common dso_local global i32 0, align 4
@genl_ops_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genl_register(%struct.nl_cache_ops* %0) #0 {
  %2 = alloca %struct.nl_cache_ops*, align 8
  %3 = alloca i32, align 4
  store %struct.nl_cache_ops* %0, %struct.nl_cache_ops** %2, align 8
  %4 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %2, align 8
  %5 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NETLINK_GENERIC, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @NLE_PROTO_MISMATCH, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %65

12:                                               ; preds = %1
  %13 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %2, align 8
  %14 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @GENL_HDRSIZE(i32 0)
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @NLE_INVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %65

21:                                               ; preds = %12
  %22 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %2, align 8
  %23 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp eq %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @NLE_INVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %65

29:                                               ; preds = %21
  %30 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %2, align 8
  %31 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %2, align 8
  %32 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store %struct.nl_cache_ops* %30, %struct.nl_cache_ops** %34, align 8
  %35 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %2, align 8
  %36 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %35, i32 0, i32 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %2, align 8
  %42 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %40, i32* %44, align 8
  %45 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %2, align 8
  %46 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %45, i32 0, i32 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %2, align 8
  %52 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @genl_msg_parser, align 4
  %56 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %2, align 8
  %57 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %2, align 8
  %59 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @nl_list_add_tail(i32* %61, i32* @genl_ops_list)
  %63 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %2, align 8
  %64 = call i32 @nl_cache_mngt_register(%struct.nl_cache_ops* %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %29, %26, %18, %9
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @GENL_HDRSIZE(i32) #1

declare dso_local i32 @nl_list_add_tail(i32*, i32*) #1

declare dso_local i32 @nl_cache_mngt_register(%struct.nl_cache_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
