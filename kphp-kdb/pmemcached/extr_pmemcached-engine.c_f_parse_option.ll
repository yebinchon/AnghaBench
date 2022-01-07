; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_f_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_f_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@return_false_if_not_found = common dso_local global i32 0, align 4
@index_mode = common dso_local global i32 0, align 4
@disable_cache = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@max_memory = common dso_local global i32 0, align 4
@pack_file = common dso_local global i32 0, align 4
@metafile_size = common dso_local global i32 0, align 4
@mcs_crypted_check_perm = common dso_local global i8* null, align 8
@memcache_methods = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@rpcs_crypted_check_perm = common dso_local global i8* null, align 8
@memcache_rpc_server = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@protected_mode = common dso_local global i32 0, align 4
@disable_wildcard = common dso_local global i32 0, align 4
@tcp_maximize_buffers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %40 [
    i32 102, label %5
    i32 105, label %6
    i32 68, label %7
    i32 109, label %10
    i32 80, label %16
    i32 77, label %18
    i32 83, label %26
    i32 82, label %29
    i32 119, label %36
    i32 81, label %39
  ]

5:                                                ; preds = %1
  store i32 1, i32* @return_false_if_not_found, align 4
  br label %41

6:                                                ; preds = %1
  store i32 1, i32* @index_mode, align 4
  br label %41

7:                                                ; preds = %1
  %8 = load i32, i32* @disable_cache, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @disable_cache, align 4
  br label %41

10:                                               ; preds = %1
  %11 = load i32, i32* @optarg, align 4
  %12 = call i32 @atoi(i32 %11)
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 1048576, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @max_memory, align 4
  br label %41

16:                                               ; preds = %1
  %17 = load i32, i32* @optarg, align 4
  store i32 %17, i32* @pack_file, align 4
  br label %41

18:                                               ; preds = %1
  %19 = load i32, i32* @optarg, align 4
  %20 = call i32 @atoi(i32 %19)
  %21 = mul nsw i32 1024, %20
  store i32 %21, i32* @metafile_size, align 4
  %22 = load i32, i32* @metafile_size, align 4
  %23 = icmp sgt i32 %22, 1048576
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1048576, i32* @metafile_size, align 4
  br label %25

25:                                               ; preds = %24, %18
  br label %41

26:                                               ; preds = %1
  %27 = load i8*, i8** @mcs_crypted_check_perm, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @memcache_methods, i32 0, i32 0), align 8
  %28 = load i8*, i8** @rpcs_crypted_check_perm, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @memcache_rpc_server, i32 0, i32 0), align 8
  br label %41

29:                                               ; preds = %1
  %30 = load i8*, i8** @mcs_crypted_check_perm, align 8
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @memcache_methods, i32 0, i32 0), align 8
  %31 = load i8*, i8** @rpcs_crypted_check_perm, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @memcache_rpc_server, i32 0, i32 0), align 8
  %32 = load i32, i32* @protected_mode, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @protected_mode, align 4
  %34 = load i32, i32* @disable_wildcard, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @disable_wildcard, align 4
  br label %41

36:                                               ; preds = %1
  %37 = load i32, i32* @disable_wildcard, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @disable_wildcard, align 4
  br label %41

39:                                               ; preds = %1
  store i32 1, i32* @tcp_maximize_buffers, align 4
  br label %41

40:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

41:                                               ; preds = %39, %36, %29, %26, %25, %16, %10, %7, %6, %5
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @atoi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
