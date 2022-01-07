; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_x9_62_free_context.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_x9_62_free_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_x9_62_keyex_context_t = type { i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.st_x9_62_keyex_context_t* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_x9_62_keyex_context_t*)* @x9_62_free_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x9_62_free_context(%struct.st_x9_62_keyex_context_t* %0) #0 {
  %2 = alloca %struct.st_x9_62_keyex_context_t*, align 8
  store %struct.st_x9_62_keyex_context_t* %0, %struct.st_x9_62_keyex_context_t** %2, align 8
  %3 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %2, align 8
  %4 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %6, align 8
  %8 = call i32 @free(%struct.st_x9_62_keyex_context_t* %7)
  %9 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %2, align 8
  %10 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %2, align 8
  %15 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @EC_KEY_free(i32* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %2, align 8
  %20 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %2, align 8
  %25 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @BN_CTX_free(i32* %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %2, align 8
  %30 = call i32 @free(%struct.st_x9_62_keyex_context_t* %29)
  ret void
}

declare dso_local i32 @free(%struct.st_x9_62_keyex_context_t*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
