; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_close_generator.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_close_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fcgi_generator_t = type { %struct.TYPE_3__, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_fcgi_generator_t*)* @close_generator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_generator(%struct.st_fcgi_generator_t* %0) #0 {
  %2 = alloca %struct.st_fcgi_generator_t*, align 8
  store %struct.st_fcgi_generator_t* %0, %struct.st_fcgi_generator_t** %2, align 8
  %3 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %4 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %3, i32 0, i32 3
  %5 = call i64 @h2o_timer_is_linked(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %9 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %8, i32 0, i32 3
  %10 = call i32 @h2o_timer_unlink(i32* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %13 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %18 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @h2o_socketpool_cancel_connect(i32* %19)
  %21 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %22 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %16, %11
  %24 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %25 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %30 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @h2o_socket_close(i32* %31)
  %33 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %34 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %37 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %44 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @h2o_doublebuffer_dispose(%struct.TYPE_4__* %45)
  br label %47

47:                                               ; preds = %42, %35
  %48 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %49 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %55 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @h2o_buffer_dispose(i32** %56)
  br label %58

58:                                               ; preds = %53, %47
  ret void
}

declare dso_local i64 @h2o_timer_is_linked(i32*) #1

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @h2o_socketpool_cancel_connect(i32*) #1

declare dso_local i32 @h2o_socket_close(i32*) #1

declare dso_local i32 @h2o_doublebuffer_dispose(%struct.TYPE_4__*) #1

declare dso_local i32 @h2o_buffer_dispose(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
