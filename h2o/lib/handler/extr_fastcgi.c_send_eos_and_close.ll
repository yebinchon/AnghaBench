; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_fastcgi.c_send_eos_and_close.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_fastcgi.c_send_eos_and_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fcgi_generator_t = type { %struct.TYPE_6__, i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_fcgi_generator_t*, i32)* @send_eos_and_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_eos_and_close(%struct.st_fcgi_generator_t* %0, i32 %1) #0 {
  %3 = alloca %struct.st_fcgi_generator_t*, align 8
  %4 = alloca i32, align 4
  store %struct.st_fcgi_generator_t* %0, %struct.st_fcgi_generator_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %3, align 8
  %6 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %5, i32 0, i32 3
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %3, align 8
  %17 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %16, i32 0, i32 3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %3, align 8
  %21 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @h2o_socketpool_return(i32* %19, i32* %22)
  br label %29

24:                                               ; preds = %12, %2
  %25 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %3, align 8
  %26 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @h2o_socket_close(i32* %27)
  br label %29

29:                                               ; preds = %24, %15
  %30 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %3, align 8
  %31 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %3, align 8
  %33 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %32, i32 0, i32 1
  %34 = call i64 @h2o_timer_is_linked(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %3, align 8
  %38 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %37, i32 0, i32 1
  %39 = call i32 @h2o_timer_unlink(i32* %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %3, align 8
  %42 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %3, align 8
  %49 = call i32 @do_send(%struct.st_fcgi_generator_t* %48)
  br label %50

50:                                               ; preds = %47, %40
  ret void
}

declare dso_local i32 @h2o_socketpool_return(i32*, i32*) #1

declare dso_local i32 @h2o_socket_close(i32*) #1

declare dso_local i64 @h2o_timer_is_linked(i32*) #1

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @do_send(%struct.st_fcgi_generator_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
