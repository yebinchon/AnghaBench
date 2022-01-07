; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_free_handshake_space.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_free_handshake_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quicly_handshake_space_t = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_quicly_handshake_space_t**)* @free_handshake_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_handshake_space(%struct.st_quicly_handshake_space_t** %0) #0 {
  %2 = alloca %struct.st_quicly_handshake_space_t**, align 8
  store %struct.st_quicly_handshake_space_t** %0, %struct.st_quicly_handshake_space_t*** %2, align 8
  %3 = load %struct.st_quicly_handshake_space_t**, %struct.st_quicly_handshake_space_t*** %2, align 8
  %4 = load %struct.st_quicly_handshake_space_t*, %struct.st_quicly_handshake_space_t** %3, align 8
  %5 = icmp ne %struct.st_quicly_handshake_space_t* %4, null
  br i1 %5, label %6, label %40

6:                                                ; preds = %1
  %7 = load %struct.st_quicly_handshake_space_t**, %struct.st_quicly_handshake_space_t*** %2, align 8
  %8 = load %struct.st_quicly_handshake_space_t*, %struct.st_quicly_handshake_space_t** %7, align 8
  %9 = getelementptr inbounds %struct.st_quicly_handshake_space_t, %struct.st_quicly_handshake_space_t* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %6
  %15 = load %struct.st_quicly_handshake_space_t**, %struct.st_quicly_handshake_space_t*** %2, align 8
  %16 = load %struct.st_quicly_handshake_space_t*, %struct.st_quicly_handshake_space_t** %15, align 8
  %17 = getelementptr inbounds %struct.st_quicly_handshake_space_t, %struct.st_quicly_handshake_space_t* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = call i32 @dispose_cipher(%struct.TYPE_4__* %18)
  br label %20

20:                                               ; preds = %14, %6
  %21 = load %struct.st_quicly_handshake_space_t**, %struct.st_quicly_handshake_space_t*** %2, align 8
  %22 = load %struct.st_quicly_handshake_space_t*, %struct.st_quicly_handshake_space_t** %21, align 8
  %23 = getelementptr inbounds %struct.st_quicly_handshake_space_t, %struct.st_quicly_handshake_space_t* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.st_quicly_handshake_space_t**, %struct.st_quicly_handshake_space_t*** %2, align 8
  %30 = load %struct.st_quicly_handshake_space_t*, %struct.st_quicly_handshake_space_t** %29, align 8
  %31 = getelementptr inbounds %struct.st_quicly_handshake_space_t, %struct.st_quicly_handshake_space_t* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @dispose_cipher(%struct.TYPE_4__* %32)
  br label %34

34:                                               ; preds = %28, %20
  %35 = load %struct.st_quicly_handshake_space_t**, %struct.st_quicly_handshake_space_t*** %2, align 8
  %36 = load %struct.st_quicly_handshake_space_t*, %struct.st_quicly_handshake_space_t** %35, align 8
  %37 = getelementptr inbounds %struct.st_quicly_handshake_space_t, %struct.st_quicly_handshake_space_t* %36, i32 0, i32 0
  %38 = call i32 @do_free_pn_space(i32* %37)
  %39 = load %struct.st_quicly_handshake_space_t**, %struct.st_quicly_handshake_space_t*** %2, align 8
  store %struct.st_quicly_handshake_space_t* null, %struct.st_quicly_handshake_space_t** %39, align 8
  br label %40

40:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @dispose_cipher(%struct.TYPE_4__*) #1

declare dso_local i32 @do_free_pn_space(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
