; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_linux-inotify.c_uv_fs_event_start.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_linux-inotify.c_uv_fs_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.watcher_list = type { i32, i32, i32, i64 }

@UV_EINVAL = common dso_local global i32 0, align 4
@UV__IN_ATTRIB = common dso_local global i32 0, align 4
@UV__IN_CREATE = common dso_local global i32 0, align 4
@UV__IN_MODIFY = common dso_local global i32 0, align 4
@UV__IN_DELETE = common dso_local global i32 0, align 4
@UV__IN_DELETE_SELF = common dso_local global i32 0, align 4
@UV__IN_MOVE_SELF = common dso_local global i32 0, align 4
@UV__IN_MOVED_FROM = common dso_local global i32 0, align 4
@UV__IN_MOVED_TO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@watcher_root = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_fs_event_start(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.watcher_list*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = call i64 @uv__is_active(%struct.TYPE_7__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @UV_EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %123

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = call i32 @init_inotify(%struct.TYPE_8__* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %123

29:                                               ; preds = %20
  %30 = load i32, i32* @UV__IN_ATTRIB, align 4
  %31 = load i32, i32* @UV__IN_CREATE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @UV__IN_MODIFY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @UV__IN_DELETE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @UV__IN_DELETE_SELF, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @UV__IN_MOVE_SELF, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @UV__IN_MOVED_FROM, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @UV__IN_MOVED_TO, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @uv__inotify_add_watch(i32 %49, i8* %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %29
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @UV__ERR(i32 %56)
  store i32 %57, i32* %5, align 4
  br label %123

58:                                               ; preds = %29
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call %struct.watcher_list* @find_watcher(%struct.TYPE_8__* %61, i32 %62)
  store %struct.watcher_list* %63, %struct.watcher_list** %10, align 8
  %64 = load %struct.watcher_list*, %struct.watcher_list** %10, align 8
  %65 = icmp ne %struct.watcher_list* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %104

67:                                               ; preds = %58
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add i64 24, %72
  %74 = trunc i64 %73 to i32
  %75 = call %struct.watcher_list* @uv__malloc(i32 %74)
  store %struct.watcher_list* %75, %struct.watcher_list** %10, align 8
  %76 = load %struct.watcher_list*, %struct.watcher_list** %10, align 8
  %77 = icmp eq %struct.watcher_list* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %79, i32* %5, align 4
  br label %123

80:                                               ; preds = %67
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.watcher_list*, %struct.watcher_list** %10, align 8
  %83 = getelementptr inbounds %struct.watcher_list, %struct.watcher_list* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.watcher_list*, %struct.watcher_list** %10, align 8
  %85 = getelementptr inbounds %struct.watcher_list, %struct.watcher_list* %84, i64 1
  %86 = load i8*, i8** %8, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @memcpy(%struct.watcher_list* %85, i8* %86, i64 %87)
  %89 = load %struct.watcher_list*, %struct.watcher_list** %10, align 8
  %90 = getelementptr inbounds %struct.watcher_list, %struct.watcher_list* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.watcher_list*, %struct.watcher_list** %10, align 8
  %92 = getelementptr inbounds %struct.watcher_list, %struct.watcher_list* %91, i32 0, i32 2
  %93 = call i32 @QUEUE_INIT(i32* %92)
  %94 = load %struct.watcher_list*, %struct.watcher_list** %10, align 8
  %95 = getelementptr inbounds %struct.watcher_list, %struct.watcher_list* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @watcher_root, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = call i32 @CAST(i32* %100)
  %102 = load %struct.watcher_list*, %struct.watcher_list** %10, align 8
  %103 = call i32 @RB_INSERT(i32 %96, i32 %101, %struct.watcher_list* %102)
  br label %104

104:                                              ; preds = %80, %66
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = call i32 @uv__handle_start(%struct.TYPE_7__* %105)
  %107 = load %struct.watcher_list*, %struct.watcher_list** %10, align 8
  %108 = getelementptr inbounds %struct.watcher_list, %struct.watcher_list* %107, i32 0, i32 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  %111 = call i32 @QUEUE_INSERT_TAIL(i32* %108, i32* %110)
  %112 = load %struct.watcher_list*, %struct.watcher_list** %10, align 8
  %113 = getelementptr inbounds %struct.watcher_list, %struct.watcher_list* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %104, %78, %55, %27, %18
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i64 @uv__is_active(%struct.TYPE_7__*) #1

declare dso_local i32 @init_inotify(%struct.TYPE_8__*) #1

declare dso_local i32 @uv__inotify_add_watch(i32, i8*, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local %struct.watcher_list* @find_watcher(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.watcher_list* @uv__malloc(i32) #1

declare dso_local i32 @memcpy(%struct.watcher_list*, i8*, i64) #1

declare dso_local i32 @QUEUE_INIT(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32, %struct.watcher_list*) #1

declare dso_local i32 @CAST(i32*) #1

declare dso_local i32 @uv__handle_start(%struct.TYPE_7__*) #1

declare dso_local i32 @QUEUE_INSERT_TAIL(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
