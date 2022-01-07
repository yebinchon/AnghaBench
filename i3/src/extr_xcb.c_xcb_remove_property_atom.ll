; ModuleID = '/home/carl/AnghaBench/i3/src/extr_xcb.c_xcb_remove_property_atom.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_xcb.c_xcb_remove_property_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@XCB_GET_PROPERTY_TYPE_ANY = common dso_local global i32 0, align 4
@XCB_PROP_MODE_REPLACE = common dso_local global i32 0, align 4
@XCB_ATOM_ATOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xcb_remove_property_atom(i32* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @xcb_grab_server(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* @XCB_GET_PROPERTY_TYPE_ANY, align 4
  %23 = call i32 @xcb_get_property(i32* %19, i32 0, i32 %20, i64 %21, i32 %22, i32 0, i32 4096)
  %24 = call %struct.TYPE_6__* @xcb_get_property_reply(i32* %18, i32 %23, i32* null)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %9, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = call i32 @xcb_get_property_value_length(%struct.TYPE_6__* %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %4
  br label %85

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = call i64* @xcb_get_property_value(%struct.TYPE_6__* %33)
  store i64* %34, i64** %10, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = icmp eq i64* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %85

38:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = call i32 @xcb_get_property_value_length(%struct.TYPE_6__* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 8
  %45 = sdiv i32 %40, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %13, align 8
  %49 = alloca i64, i64 %47, align 16
  store i64 %47, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %73, %38
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load i64*, i64** %10, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load i64*, i64** %10, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i64, i64* %49, i64 %70
  store i64 %67, i64* %71, align 8
  br label %72

72:                                               ; preds = %62, %54
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %50

76:                                               ; preds = %50
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @XCB_PROP_MODE_REPLACE, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* @XCB_ATOM_ATOM, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @xcb_change_property(i32* %77, i32 %78, i32 %79, i64 %80, i32 %81, i32 32, i32 %82, i64* %49)
  %84 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %84)
  br label %85

85:                                               ; preds = %76, %37, %31
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %87 = call i32 @FREE(%struct.TYPE_6__* %86)
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @xcb_ungrab_server(i32* %88)
  ret void
}

declare dso_local i32 @xcb_grab_server(i32*) #1

declare dso_local %struct.TYPE_6__* @xcb_get_property_reply(i32*, i32, i32*) #1

declare dso_local i32 @xcb_get_property(i32*, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @xcb_get_property_value_length(%struct.TYPE_6__*) #1

declare dso_local i64* @xcb_get_property_value(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @xcb_change_property(i32*, i32, i32, i64, i32, i32, i32, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FREE(%struct.TYPE_6__*) #1

declare dso_local i32 @xcb_ungrab_server(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
