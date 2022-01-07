; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_my_object_save.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_my_object_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32 }

@EMPTY__METAFILE = common dso_local global i64 0, align 8
@PHOTO_TYPE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@total_photos = common dso_local global i32 0, align 4
@types = common dso_local global %struct.TYPE_12__* null, align 8

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
