; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_set_state.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state = common dso_local global i32 0, align 4
@ts = common dso_local global i32* null, align 8
@tpe = common dso_local global i32 0, align 4
@tce = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@skey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @state, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %50

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @state, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 130
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @state, align 4
  %16 = icmp sge i32 %15, 130
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** @ts, align 8
  %19 = call i32 @t_serverclose(i32* %18)
  store i32* null, i32** @ts, align 8
  br label %20

20:                                               ; preds = %17, %14, %11
  br label %47

21:                                               ; preds = %7
  %22 = load i32, i32* @state, align 4
  switch i32 %22, label %46 [
    i32 128, label %23
    i32 130, label %34
    i32 129, label %37
  ]

23:                                               ; preds = %21
  %24 = call i32 (...) @prepare_password()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %49

27:                                               ; preds = %23
  %28 = load i32, i32* @tce, align 4
  %29 = call i32* @t_serveropenraw(i32* @tpe, i32 %28)
  store i32* %29, i32** @ts, align 8
  %30 = load i32*, i32** @ts, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %49

33:                                               ; preds = %27
  br label %46

34:                                               ; preds = %21
  %35 = load i32*, i32** @ts, align 8
  %36 = call i32 @t_servergenexp(i32* %35)
  store i32 %36, i32* @B, align 4
  br label %46

37:                                               ; preds = %21
  %38 = load i32*, i32** @ts, align 8
  %39 = call i32 @t_servergetkey(i32* %38, i32* @A)
  store i32 %39, i32* @skey, align 4
  %40 = load i32, i32* @skey, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %49

43:                                               ; preds = %37
  %44 = load i32, i32* @skey, align 4
  %45 = call i32 @ead_set_key(i32 %44)
  br label %46

46:                                               ; preds = %21, %43, %34, %33
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i32, i32* %2, align 4
  store i32 %48, i32* @state, align 4
  br label %49

49:                                               ; preds = %47, %42, %32, %26
  br label %50

50:                                               ; preds = %49, %6
  ret void
}

declare dso_local i32 @t_serverclose(i32*) #1

declare dso_local i32 @prepare_password(...) #1

declare dso_local i32* @t_serveropenraw(i32*, i32) #1

declare dso_local i32 @t_servergenexp(i32*) #1

declare dso_local i32 @t_servergetkey(i32*, i32*) #1

declare dso_local i32 @ead_set_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
