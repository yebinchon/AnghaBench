; ModuleID = '/home/carl/AnghaBench/i3/src/extr_handlers.c_property_notify.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_handlers.c_property_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property_handler_t = type { i64, i32 (i32*, i32, i64, i32, i64, i32*)*, i32 }

@NUM_HANDLERS = common dso_local global i64 0, align 8
@property_handlers = common dso_local global %struct.property_handler_t* null, align 8
@XCB_PROPERTY_DELETE = common dso_local global i64 0, align 8
@conn = common dso_local global i32 0, align 4
@XCB_GET_PROPERTY_TYPE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64)* @property_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @property_notify(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.property_handler_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store %struct.property_handler_t* null, %struct.property_handler_t** %7, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %28, %3
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @NUM_HANDLERS, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load %struct.property_handler_t*, %struct.property_handler_t** @property_handlers, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds %struct.property_handler_t, %struct.property_handler_t* %16, i64 %17
  %19 = getelementptr inbounds %struct.property_handler_t, %struct.property_handler_t* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  %25 = load %struct.property_handler_t*, %struct.property_handler_t** @property_handlers, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.property_handler_t, %struct.property_handler_t* %25, i64 %26
  store %struct.property_handler_t* %27, %struct.property_handler_t** %7, align 8
  br label %31

28:                                               ; preds = %23
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %9, align 8
  br label %11

31:                                               ; preds = %24, %11
  %32 = load %struct.property_handler_t*, %struct.property_handler_t** %7, align 8
  %33 = icmp eq %struct.property_handler_t* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %65

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @XCB_PROPERTY_DELETE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32, i32* @conn, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @XCB_GET_PROPERTY_TYPE_ANY, align 4
  %44 = load %struct.property_handler_t*, %struct.property_handler_t** %7, align 8
  %45 = getelementptr inbounds %struct.property_handler_t, %struct.property_handler_t* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @xcb_get_property(i32 %40, i32 0, i32 %41, i64 %42, i32 %43, i32 0, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @conn, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32* @xcb_get_property_reply(i32 %48, i32 %49, i32 0)
  store i32* %50, i32** %8, align 8
  br label %51

51:                                               ; preds = %39, %35
  %52 = load %struct.property_handler_t*, %struct.property_handler_t** %7, align 8
  %53 = getelementptr inbounds %struct.property_handler_t, %struct.property_handler_t* %52, i32 0, i32 1
  %54 = load i32 (i32*, i32, i64, i32, i64, i32*)*, i32 (i32*, i32, i64, i32, i64, i32*)** %53, align 8
  %55 = load i32, i32* @conn, align 4
  %56 = load i64, i64* %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i64, i64* %6, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 %54(i32* null, i32 %55, i64 %56, i32 %57, i64 %58, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @FREE(i32* %63)
  br label %65

65:                                               ; preds = %34, %62, %51
  ret void
}

declare dso_local i32 @xcb_get_property(i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32* @xcb_get_property_reply(i32, i32, i32) #1

declare dso_local i32 @FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
