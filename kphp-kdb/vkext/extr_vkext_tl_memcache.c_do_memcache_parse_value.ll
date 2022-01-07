; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_tl_memcache.c_do_memcache_parse_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_tl_memcache.c_do_memcache_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memcache_value = type { i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i8* }

@error_buf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unknown magic %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_memcache_parse_value(%struct.memcache_value* noalias sret %0) #0 {
  %2 = alloca i32, align 4
  %3 = call i32 (...) @tl_parse_init()
  %4 = call i8* (...) @tl_parse_int()
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %42 [
    i32 129, label %7
    i32 130, label %9
    i32 128, label %16
    i32 133, label %27
    i32 131, label %38
    i32 132, label %40
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 0
  store i32 129, i32* %8, align 8
  br label %48

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 0
  store i32 130, i32* %10, align 8
  %11 = call i32 (...) @tl_parse_long()
  %12 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = call i8* (...) @tl_parse_int()
  %15 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  br label %48

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 0
  store i32 128, i32* %17, align 8
  %18 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i8* @tl_parse_string(i64* %20)
  %22 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = call i8* (...) @tl_parse_int()
  %26 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  br label %48

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 0
  store i32 133, i32* %28, align 8
  %29 = call i32 (...) @tl_parse_long()
  %30 = call i8* (...) @tl_parse_int()
  %31 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i8* @tl_parse_string(i64* %33)
  %35 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  br label %48

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 0
  store i32 131, i32* %39, align 8
  br label %48

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 0
  store i32 132, i32* %41, align 8
  br label %48

42:                                               ; preds = %1
  %43 = load i32, i32* @error_buf, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @snprintf(i32 %43, i32 1000, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @error_buf, align 4
  %47 = call i32 @tl_set_error(i32 %46)
  br label %48

48:                                               ; preds = %42, %40, %38, %27, %16, %9, %7
  %49 = call i32 (...) @tl_parse_end()
  %50 = call i64 (...) @tl_parse_error()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 0
  store i32 133, i32* %53, align 8
  %54 = call i64 (...) @tl_parse_error()
  %55 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @strlen(i64 %61)
  %63 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %0, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  br label %66

66:                                               ; preds = %52, %48
  ret void
}

declare dso_local i32 @tl_parse_init(...) #1

declare dso_local i8* @tl_parse_int(...) #1

declare dso_local i32 @tl_parse_long(...) #1

declare dso_local i8* @tl_parse_string(i64*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @tl_set_error(i32) #1

declare dso_local i32 @tl_parse_end(...) #1

declare dso_local i64 @tl_parse_error(...) #1

declare dso_local i8* @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
