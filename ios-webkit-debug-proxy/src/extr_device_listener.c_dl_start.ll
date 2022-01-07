; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_device_listener.c_dl_start.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_device_listener.c_dl_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*, i64)* }

@.str = private unnamed_addr constant [20 x i8] c"ClientVersionString\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"device_listener\00", align 1
@.str.2 = private unnamed_addr constant [137 x i8] c"Detected an old copy of libplist?!  For a fix, see:\0Ahttps://github.com/libimobiledevice/libimobiledevice/issues/68#issuecomment-38994545\00", align 1
@DL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"MessageType\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Listen\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ProgName\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"libusbmuxd\00", align 1
@TYPE_PLIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dl_start(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %11 = call i32 (...) @plist_new_dict()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @plist_new_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @plist_dict_set_item(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @plist_dict_get_size(i32 %15)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = call i32 @perror(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @DL_ERROR, align 4
  store i32 %20, i32* %2, align 4
  br label %71

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @plist_new_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @plist_dict_set_item(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @plist_new_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %27 = call i32 @plist_dict_set_item(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %26)
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @plist_to_xml(i32 %28, i8** %5, i32* %6)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @plist_free(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 16, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @calloc(i64 %35, i32 1)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %21
  %41 = load i32, i32* @DL_ERROR, align 4
  store i32 %41, i32* %2, align 4
  br label %71

42:                                               ; preds = %21
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i8* @dl_sprintf_uint32(i8* %44, i32 %46)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i8* @dl_sprintf_uint32(i8* %48, i32 1)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @TYPE_PLIST, align 4
  %52 = call i8* @dl_sprintf_uint32(i8* %50, i32 %51)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i8* @dl_sprintf_uint32(i8* %53, i32 1)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @strncpy(i8* %55, i8* %56, i32 %57)
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_4__*, i8*, i64)*, i32 (%struct.TYPE_4__*, i8*, i64)** %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 %63(%struct.TYPE_4__* %64, i8* %65, i64 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %42, %40, %18
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @plist_new_dict(...) #1

declare dso_local i32 @plist_dict_set_item(i32, i8*, i32) #1

declare dso_local i32 @plist_new_string(i8*) #1

declare dso_local i32 @plist_dict_get_size(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @plist_to_xml(i32, i8**, i32*) #1

declare dso_local i32 @plist_free(i32) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i8* @dl_sprintf_uint32(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
