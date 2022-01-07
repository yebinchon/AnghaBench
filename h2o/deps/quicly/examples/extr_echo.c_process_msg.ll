; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/examples/extr_echo.c_process_msg.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/examples/extr_echo.c_process_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ctx = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@next_cid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32**, %struct.msghdr*, i64)* @process_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_msg(i32 %0, i32** %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store %struct.msghdr* %2, %struct.msghdr** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %83, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %87

17:                                               ; preds = %13
  %18 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %23, %24
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %26, %27
  %29 = call i64 @quicly_decode_packet(i32* @ctx, i32* %12, i64 %25, i64 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* @SIZE_MAX, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %87

33:                                               ; preds = %17
  store i64 0, i64* %11, align 8
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32**, i32*** %6, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load i32**, i32*** %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %46 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @quicly_is_destination(i32* %44, i32* null, i32 %47, i32* %12)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %55

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %11, align 8
  br label %34

55:                                               ; preds = %50, %34
  %56 = load i32**, i32*** %6, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i32**, i32*** %6, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %67 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @quicly_receive(i32* %65, i32* null, i32 %68, i32* %12)
  br label %82

70:                                               ; preds = %55
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = load i32**, i32*** %6, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %78 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @quicly_accept(i32** %76, i32* @ctx, i32* null, i32 %79, i32* %12, i32* null, i32* @next_cid, i32* null)
  br label %81

81:                                               ; preds = %73, %70
  br label %82

82:                                               ; preds = %81, %61
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %9, align 8
  br label %13

87:                                               ; preds = %32, %13
  ret void
}

declare dso_local i64 @quicly_decode_packet(i32*, i32*, i64, i64) #1

declare dso_local i64 @quicly_is_destination(i32*, i32*, i32, i32*) #1

declare dso_local i32 @quicly_receive(i32*, i32*, i32, i32*) #1

declare dso_local i32 @quicly_accept(i32**, i32*, i32*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
