; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_signal.c_uv__signal_start.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_signal.c_uv__signal_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8* }

@UV_EINVAL = common dso_local global i32 0, align 4
@UV_SIGNAL_ONE_SHOT = common dso_local global i32 0, align 4
@uv__signal_tree_s = common dso_local global i32 0, align 4
@uv__signal_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, i32)* @uv__signal_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__signal_start(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = call i32 @uv__is_closing(%struct.TYPE_8__* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @UV_EINVAL, align 4
  store i32 %22, i32* %5, align 4
  br label %89

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  store i32 0, i32* %5, align 4
  br label %89

33:                                               ; preds = %23
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = call i32 @uv__signal_stop(%struct.TYPE_8__* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = call i32 @uv__signal_block_and_lock(i32* %10)
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.TYPE_8__* @uv__signal_first_handle(i32 %43)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %12, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %46 = icmp eq %struct.TYPE_8__* %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UV_SIGNAL_ONE_SHOT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50, %41
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @uv__signal_register_handler(i32 %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = call i32 @uv__signal_unlock_and_unblock(i32* %10)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %89

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %50, %47
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* @UV_SIGNAL_ONE_SHOT, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i32, i32* @uv__signal_tree_s, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = call i32 @RB_INSERT(i32 %80, i32* @uv__signal_tree, %struct.TYPE_8__* %81)
  %83 = call i32 @uv__signal_unlock_and_unblock(i32* %10)
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = call i32 @uv__handle_start(%struct.TYPE_8__* %87)
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %79, %63, %29, %21
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv__is_closing(%struct.TYPE_8__*) #1

declare dso_local i32 @uv__signal_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @uv__signal_block_and_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @uv__signal_first_handle(i32) #1

declare dso_local i32 @uv__signal_register_handler(i32, i32) #1

declare dso_local i32 @uv__signal_unlock_and_unblock(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @uv__handle_start(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
